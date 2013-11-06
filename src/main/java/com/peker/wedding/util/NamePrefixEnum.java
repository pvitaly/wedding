package com.peker.wedding.util;

public enum NamePrefixEnum {

	MR("Mr"), MS("Ms"), MRS("Mrs");

	private String	prefix;

	private NamePrefixEnum(final String prefix) {
		this.prefix = prefix;
	}

	public String getPrefix() {
		return this.prefix;
	}

}
