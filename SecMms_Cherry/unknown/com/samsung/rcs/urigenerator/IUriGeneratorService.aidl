/* 
 * Copyright (c) 2012 Samsung Electronics Co., Ltd.
 * 
 * All right reserved.
 * 
 * This software is the confidential and proprietary information of Samsung
 * Electronics ("Confidential Information"). You shall not disclose such
 * Confidential Information and shall use it only in accordance with the terms
 * of the license agreement you entered into with Samsung Electronics.
 */

package com.samsung.rcs.urigenerator;

/**
 * UriGeneratorService interface
 *
 * @author Damian Momot <d.momot@samsung.com>
 */
interface IUriGeneratorService {
	
	/**
	 * Generates tel URI from telNumber
	 */
	String generateTelUri(String telNumber);
	
	/**
	 * Generates sip URI from telNumber
	 */
	String generateSipUri(String telNumber);

}