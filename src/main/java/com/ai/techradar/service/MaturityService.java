package com.ai.techradar.service;

import java.util.List;

import com.ai.techradar.web.service.to.MaturityTO;

public interface MaturityService {

	List<MaturityTO> getMaturities();

	MaturityTO createMaturity(MaturityTO maturity);

}
