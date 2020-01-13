package com.hotel.utils;

import com.alibaba.fastjson.JSON;


/**
 * @author GaoLiWei
 * @date 2018/5/29
 * 返回值
 */

public class Result {

    public Result() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Result(Integer code, String msg, Object data) {
		super();
		this.code = code;
		this.msg = msg;
		this.data = data;
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}


	private Integer code;
    private String msg;
    private Object data;


    /**
     * 返回值
     * 返回成功的情况
     * 适用于查询
     *
     * @param data
     * @return
     */
    public static Result result(Object data) {
        return new Result(ResultCode.SUCCESS.code, MessageConstant.MESSAGE_ALERT_SUCCESS.msg, data);
    }

    /**
     * 返回值
     * 适用于增删改
     *
     * @param operate 增删改的操作结果，大于0时，返回成功，小于0时，返回失败
     * @param data    结果集
     * @return
     */
    public static Result result(int operate, Object data) {
        Result result = new Result(ResultCode.SUCCESS.code, MessageConstant.MESSAGE_ALERT_SUCCESS.msg, data);
        if (operate <= 0) {
            result.setCode(ResultCode.FAIL.code);
            result.setMsg(MessageConstant.MESSAGE_ALERT_ERROR.msg);
        }
        return result;
    }

    /**
     * 返回值
     * 适用于增删改
     *
     * @param operate 增删改的操作结果，大于0时，返回成功，小于0时，返回失败
     * @param success 成功的提示信息
     * @param error   失败的提示信息
     * @return
     */
    public static Result result(int operate, String success, String error) {
        Result result = new Result(ResultCode.SUCCESS.code, success, null);
        if (operate <= 0) {
            result.setCode(ResultCode.FAIL.code);
            result.setMsg(error);
        }
        return result;
    }

    /**
     * 返回值
     * 适用于增删改
     *
     * @param operate 增删改的操作结果，大于0时，返回成功，小于0时，返回失败
     * @param success 成功的提示信息
     * @param error   失败的提示信息
     * @param data    结果集
     * @return
     */
    public static Result result(int operate, String success, String error, Object data) {
        Result result = new Result(ResultCode.SUCCESS.code, success, data);
        if (operate <= 0) {
            result.setCode(ResultCode.FAIL.code);
            result.setMsg(error);
        }
        return result;
    }

    /**
     * 自定义返回内容
     *
     * @param code 返回值代码
     * @param msg  返回值提示信息
     * @param data 返回值内容
     * @return
     */
    public static Result result(ResultCode code, String msg, Object data) {
        return new Result(code.code, msg, data);
    }


    @Override
    public String toString() {
        return JSON.toJSONString(this);
    }

}
