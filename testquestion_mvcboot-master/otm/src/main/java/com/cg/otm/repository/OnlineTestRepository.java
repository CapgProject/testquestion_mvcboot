/**
 * 
 */
package com.cg.otm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cg.otm.dto.OnlineTest;

/**
 * @author Swanand
 *
 */
public interface OnlineTestRepository extends JpaRepository<OnlineTest, Long>{

	public OnlineTest findByTestId(Long id);
	
	@Query("FROM OnlineTest WHERE isTestAssigned=false AND isDeleted=false")
	public List<OnlineTest> findAllNotAssignedAndNotDeleted();
}
