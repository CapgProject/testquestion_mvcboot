package com.cg.otm.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;

import javax.transaction.Transactional;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Service;

import com.cg.otm.dto.OnlineTest;
import com.cg.otm.dto.Question;
import com.cg.otm.dto.User;
import com.cg.otm.exception.ExceptionMessage;
import com.cg.otm.exception.UserException;
import com.cg.otm.repository.OnlineTestRepository;
import com.cg.otm.repository.QuestionRepository;

@Service("testservice")
@Transactional
public class OnlineTestServiceImpl implements OnlineTestService {

	@Autowired
	OnlineTestRepository testRepository;

	@Autowired
	QuestionRepository questionRepository;

//	@Override
//	public User registerUser(User user) throws UserException {
//		User returnedUser = testdao.saveUser(user);
//		if (returnedUser != null)
//			return user;
//		else {
//			throw new UserException(ExceptionMessage.DATABASEMESSAGE);
//		}
//	}
//
//	@Override
//	public Boolean answerQuestion(OnlineTest onlineTest, Question question, Integer chosenAnswer) throws UserException {
//		if (!onlineTest.getTestQuestions().contains(question)) {
//			throw new UserException(ExceptionMessage.QUESTIONMESSAGE);
//		}
//		question.setChosenAnswer(chosenAnswer);
//		if (question.getChosenAnswer() == question.getQuestionAnswer()) {
//			question.setMarksScored(question.getQuestionMarks());
//		} else {
//			question.setMarksScored(new Double(0.0));
//		}
//		testdao.updateQuestion(question);
//		return true;
//	}

	@Override
	public Question showQuestion(OnlineTest onlineTest, Long questionId) throws UserException {
		Question question = questionRepository.findByQuestionId(questionId);
		if (question == null || !onlineTest.getTestQuestions().contains(question)) {
			throw new UserException(ExceptionMessage.QUESTIONMESSAGE);
		}
		return question;
	}
//
//	@Override
//	public Boolean assignTest(Long userId, Long testId) throws UserException {
//		User user = testdao.searchUser(userId);
//		OnlineTest onlineTest = testdao.searchTest(testId);
//		if (user == null) {
//			throw new UserException(ExceptionMessage.USERMESSAGE);
//		}
//		if (user.getIsAdmin()) {
//			throw new UserException(ExceptionMessage.ADMINMESSAGE);
//		}
//		if (onlineTest == null) {
//			throw new UserException(ExceptionMessage.TESTMESSAGE);
//		}
//		if (onlineTest.getIsTestAssigned()) {
//			throw new UserException(ExceptionMessage.TESTASSIGNEDMESSAGE);
//		} else {
//			user.setUserTest(onlineTest);
//			onlineTest.setIsTestAssigned(true);
//		}
//		testdao.updateTest(onlineTest);
//		testdao.updateUser(user);
//		return true;
//	}

	@Override
	public OnlineTest addTest(OnlineTest onlineTest) throws UserException {
		OnlineTest returnedTest = testRepository.save(onlineTest);
		if (returnedTest == null) {
			throw new UserException(ExceptionMessage.DATABASEMESSAGE);
		}
		return returnedTest;
	}

	@Override
	public OnlineTest updateTest(Long testId, OnlineTest onlineTest) throws UserException {
		OnlineTest temp = testRepository.findByTestId(testId);
		if (temp != null) {
			temp.setTestId(testId);
			temp.setTestName(onlineTest.getTestName());
			temp.setTestDuration(onlineTest.getTestDuration());
			temp.setStartTime(onlineTest.getStartTime());
			temp.setEndTime(onlineTest.getEndTime());
			temp.setIsdeleted(onlineTest.getIsdeleted());
			temp.setIsTestAssigned(onlineTest.getIsTestAssigned());
			temp.setTestMarksScored(onlineTest.getTestMarksScored());
			temp.setTestQuestions(onlineTest.getTestQuestions());
			temp.setTestTotalMarks(onlineTest.getTestMarksScored());
			testRepository.save(temp);
			return onlineTest;
		} else
			throw new UserException(ExceptionMessage.TESTMESSAGE);
	}

	@Override
	public OnlineTest deleteTest(Long testId) throws UserException {
		OnlineTest returnedTest = testRepository.findByTestId(testId);
		if (returnedTest != null && returnedTest.getIsdeleted() == false) {
			returnedTest.setIsdeleted(true);
		} else {
			throw new UserException(ExceptionMessage.TESTNOTFOUNDMESSAGE);
		}
		return returnedTest;
	}

	@Override
	public Question updateQuestion(Long testId, Long questionId, Question question) throws UserException {
		OnlineTest temp = testRepository.findByTestId(testId);
		if (temp != null) {
			Set<Question> quests = temp.getTestQuestions();
			Question tempQuestion = questionRepository.findByQuestionId(questionId);
			if (tempQuestion != null && quests.contains(tempQuestion)) {
				tempQuestion.setChosenAnswer(question.getChosenAnswer());
				if (tempQuestion.getChosenAnswer() == tempQuestion.getQuestionAnswer()) {
					tempQuestion.setMarksScored(question.getQuestionMarks());
				}
				question.setQuestionId(questionId);
				temp.setTestTotalMarks(
						temp.getTestTotalMarks() - tempQuestion.getQuestionMarks() + question.getQuestionMarks());
				temp.setTestMarksScored(temp.getTestMarksScored() + tempQuestion.getMarksScored());
				tempQuestion.setQuestionMarks(question.getQuestionMarks());
				tempQuestion.setIsDeleted(question.getIsDeleted());
				tempQuestion.setOnlinetest(question.getOnlinetest());
				tempQuestion.setQuestionAnswer(question.getQuestionAnswer());
				tempQuestion.setQuestionId(questionId);
				tempQuestion.setQuestionOptions(question.getQuestionOptions());
				tempQuestion.setQuestionTitle(question.getQuestionTitle());
				questionRepository.save(tempQuestion);
				testRepository.save(temp);
				return question;
			} else
				throw new UserException(ExceptionMessage.QUESTIONMESSAGE);
		} else
			throw new UserException(ExceptionMessage.TESTMESSAGE);
	}

	@Override
	public Question deleteQuestion(Long testId, Long questionId) throws UserException {
		OnlineTest temp = testRepository.findByTestId(testId);
		if (temp != null) {
			Set<Question> quests = temp.getTestQuestions();
			Question tempQuestion = questionRepository.findByQuestionId(questionId);
			if (tempQuestion != null && quests.contains(tempQuestion) && tempQuestion.getIsDeleted() == false) {
				temp.setTestTotalMarks(temp.getTestTotalMarks() - tempQuestion.getQuestionMarks());
				testRepository.save(temp);
				tempQuestion.setIsDeleted(true);
				return tempQuestion;
			} else
				throw new UserException(ExceptionMessage.QUESTIONMESSAGE);
		} else
			throw new UserException(ExceptionMessage.TESTMESSAGE);
	}
//
//	@Override
//	public Double getResult(OnlineTest onlineTest) throws UserException {
//		Double score = calculateTotalMarks(onlineTest);
//		onlineTest.setIsTestAssigned(false);
//		testdao.updateTest(onlineTest);
//		return score;
//	}
//
//	@Override
//	public Double calculateTotalMarks(OnlineTest onlineTest) throws UserException {
//		Double score = new Double(0.0);
//		for (Question question : onlineTest.getTestQuestions()) {
//			score = score + question.getMarksScored();
//		}
//		onlineTest.setTestMarksScored(score);
//		testdao.updateTest(onlineTest);
//		return score;
//	}
//
//	@Override
//	public User searchUser(Long userId) throws UserException {
//		User returnedUser = testdao.searchUser(userId);
//		if (returnedUser != null) {
//			return returnedUser;
//		} else {
//			throw new UserException(ExceptionMessage.USERMESSAGE);
//		}
//
//	}

	@Override
	public OnlineTest searchTest(Long testId) throws UserException {
		OnlineTest returnedTest = testRepository.findByTestId(testId);
		if (returnedTest != null) {
			return returnedTest;
		} else {
			throw new UserException(ExceptionMessage.TESTNOTFOUNDMESSAGE);
		}
	}

//	@Override
//	public User updateProfile(User user) throws UserException {
//
//		User returnedUser = testdao.updateUser(user);
//		if (returnedUser == null) {
//			throw new UserException(ExceptionMessage.USERMESSAGE);
//		}
//		return returnedUser;
//	}
//
//	@Override
//	public List<User> getUsers() {
//		return testdao.getUsers();
//	}
//
	@Override
	public List<OnlineTest> getTests() {
		return testRepository.findAllNotAssignedAndNotDeleted();
	}

	@Override
	public Question searchQuestion(Long questionId) throws UserException {
		Question question = questionRepository.findByQuestionId(questionId);
		if (question != null) {
			return question;
		} else {
			throw new UserException(ExceptionMessage.QUESTIONNOTFOUNDMESSAGE);
		}
	}
//	
//	@Override
//	public User login(String userName, String pass) {
//		return testdao.login(userName, pass);
//	}

	@Override
	public void readFromExcel(long id, String fileName, long time) throws IOException, UserException {
		String UPLOAD_DIRECTORY = "C:\\Users\\Sarvesh\\Downloads\\apache-tomcat-8.5.46\\webapps\\Excel_Files";
		File dataFile = new File(UPLOAD_DIRECTORY + "\\" + time + fileName);
		FileInputStream fis = new FileInputStream(dataFile);
		XSSFWorkbook workbook = new XSSFWorkbook(fis);
		XSSFSheet sheet = workbook.getSheetAt(0);
		Row row;
		Double testMarks = 0.0;
		for (int i = 1; i <= sheet.getLastRowNum(); i++) {
			row = (Row) sheet.getRow(i);
			String title;
			if (row.getCell(0) == null) {
				throw new UserException(ExceptionMessage.QUESTIONTITLEMESSAGE);
			} else {
				title = row.getCell(0).toString();
			}
			String marks;
			if (row.getCell(1) == null) {
				throw new UserException(ExceptionMessage.QUESTIONMARKSMESSAGE);
			} else {
				marks = row.getCell(1).toString();
				testMarks = testMarks + Double.parseDouble(marks);
			}
			String options;
			if (row.getCell(2) == null) {
				throw new UserException(ExceptionMessage.QUESTIONOPTIONSMESSAGE);
			} else {
				options = row.getCell(2).toString();
			}
			String answer;
			if (row.getCell(3) == null) {
				throw new UserException(ExceptionMessage.QUESTIONANSWERMESSAGE);
			} else {
				answer = row.getCell(3).toString();
			}

			Question question = new Question();
			OnlineTest test = testRepository.findByTestId(id);
			if(test == null) {
				throw new UserException(ExceptionMessage.TESTNOTFOUNDMESSAGE);
			}
			test.setTestTotalMarks(testMarks);
			String option[] = new String[4];
			question.setQuestionTitle(title);
			question.setQuestionMarks(Double.parseDouble(marks));
			StringTokenizer token = new StringTokenizer(options, ",");
			int k = 0;
			while (token.hasMoreTokens()) {
				option[k] = token.nextToken();
				k++;
			}
			question.setQuestionOptions(option);
			question.setQuestionAnswer((int) Double.parseDouble(answer));
			question.setChosenAnswer(0);
			question.setIsDeleted(false);
			question.setMarksScored(new Double(0));
			question.setOnlinetest(test);
			questionRepository.save(question);
		}
		fis.close();
	}

}
