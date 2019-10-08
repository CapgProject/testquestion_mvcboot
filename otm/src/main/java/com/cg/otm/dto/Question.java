package com.cg.otm.dto;
import java.math.BigInteger;
import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "question")
public class Question {
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		@Column(name = "question_id")
		private Long questionId;
		
		@NotEmpty(message = "Question options cannot be empty!")
		@Column(name = "question_options")
		private String[] questionOptions;
		
		@NotEmpty(message = "Question Title cannot be empty!")
		@Column(name = "question_title")		
		private String questionTitle;
		
		@NotNull(message = "Question Answer cannot be empty!")
		@Column(name = "question_correct_answer")
		private Integer questionAnswer;
		
		@NotNull(message = "Question Marks cannot be empty!")
		@Column(name = "question_marks")
		private Double questionMarks;
		
		@NotNull(message = "Correct Answer cannot be empty!")
		@Column(name = "question_chosen_answer")
		private Integer chosenAnswer;
		
		@Column(name = "question_marks_scored")
		private Double marksScored;
		
		@Column(name = "is_deleted")
		private Boolean isDeleted;

		@ManyToOne
		@JoinColumn(name = "test_id")
		private OnlineTest onlinetest;

		public OnlineTest getOnlinetest() {
			return onlinetest;
		}

		public void setOnlinetest(OnlineTest onlinetest) {
			this.onlinetest = onlinetest;
		}

		public Question() {
			super();
		}

		public Question(Long questionId, String[] questionOptions, String questionTitle, Integer questionAnswer,
				Double questionMarks, Double marksScored, BigInteger testId) {
			super();
			this.questionId = questionId;
			this.questionOptions = questionOptions;
			this.questionTitle = questionTitle;
			this.questionAnswer = questionAnswer;
			this.questionMarks = questionMarks;
			this.chosenAnswer = -1;
			this.marksScored = marksScored;
			this.isDeleted = false;
		}

		public Long getQuestionId() {
			return questionId;
		}

		public void setQuestionId(Long questionId) {
			this.questionId = questionId;
		}

		public String[] getQuestionOptions() {
			return questionOptions;
		}

		public void setQuestionOptions(String[] questionOptions) {
			this.questionOptions = questionOptions;
		}

		public String getQuestionTitle() {
			return questionTitle;
		}

		public void setQuestionTitle(String questionTitle) {
			this.questionTitle = questionTitle;
		}

		public Integer getQuestionAnswer() {
			return questionAnswer;
		}

		public void setQuestionAnswer(Integer questionAnswer) {
			this.questionAnswer = questionAnswer;
		}

		public Double getQuestionMarks() {
			return questionMarks;
		}

		public void setQuestionMarks(Double questionMarks) {
			this.questionMarks = questionMarks;
		}

		public Integer getChosenAnswer() {
			return chosenAnswer;
		}

		public void setChosenAnswer(Integer chosenAnswer) {
			this.chosenAnswer = chosenAnswer;
		}

		public Double getMarksScored() {
			return marksScored;
		}

		public void setMarksScored(Double marksScored) {
			this.marksScored = marksScored;
		}

		public Boolean getIsDeleted() {
			return isDeleted;
		}

		public void setIsDeleted(Boolean isDeleted) {
			this.isDeleted = isDeleted;
		}

		@Override
		public String toString() {
			return "Question [questionId=" + questionId + ", questionOptions=" + Arrays.toString(questionOptions)
			+ ", questionTitle=" + questionTitle + ", questionAnswer=" + questionAnswer + ", questionMarks="
			+ questionMarks + ", chosenAnswer=" + chosenAnswer + ", marksScored=" + marksScored + ", testId=" + "]";
		}

		@Override
		public int hashCode() {
			return this.questionId.intValue();
		}

		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			Question other = (Question) obj;
			if (chosenAnswer == null) {
				if (other.chosenAnswer != null)
					return false;
			} else if (!chosenAnswer.equals(other.chosenAnswer))
				return false;
			if (isDeleted == null) {
				if (other.isDeleted != null)
					return false;
			} else if (!isDeleted.equals(other.isDeleted))
				return false;
			if (marksScored == null) {
				if (other.marksScored != null)
					return false;
			} else if (!marksScored.equals(other.marksScored))
				return false;
			if (onlinetest == null) {
				if (other.onlinetest != null)
					return false;
			} else if (!onlinetest.equals(other.onlinetest))
				return false;
			if (questionAnswer == null) {
				if (other.questionAnswer != null)
					return false;
			} else if (!questionAnswer.equals(other.questionAnswer))
				return false;
			if (questionId == null) {
				if (other.questionId != null)
					return false;
			} else if (!questionId.equals(other.questionId))
				return false;
			if (questionMarks == null) {
				if (other.questionMarks != null)
					return false;
			} else if (!questionMarks.equals(other.questionMarks))
				return false;
			if (!Arrays.equals(questionOptions, other.questionOptions))
				return false;
			if (questionTitle == null) {
				if (other.questionTitle != null)
					return false;
			} else if (!questionTitle.equals(other.questionTitle))
				return false;
			return true;
		}

		

	}



