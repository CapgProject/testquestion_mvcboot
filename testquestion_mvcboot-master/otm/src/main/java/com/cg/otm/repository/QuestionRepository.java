/**
 * 
 */
package com.cg.otm.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cg.otm.dto.Question;

/**
 * @author Swanand
 *
 */
public interface QuestionRepository extends JpaRepository<Question, Long>{

	public Question findByQuestionId(Long questionId);
}
