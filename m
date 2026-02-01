Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ECsVLZ0Kf2kEiwIAu9opvQ
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 01 Feb 2026 09:11:09 +0100
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B02C52EF
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 01 Feb 2026 09:11:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k9D/ds/dG1+B90nBgZQnJoL2a3IMsPxJ6Kd5wfv1osQ=; b=auWYe5hSBumkqEsVPPcIWbz6sU
	XbQq1F2BUE2O/OlYgmyv5hqPlmsdsdZsGMIHwe07PFHyuI8q9HzWrRr0eG1T4+KUzU2fZrQcBYZnw
	//KSv9nGROImJyjbKitIiyo5DC8R2L91uu/dPdChMl0InURIbEjyj4Q3UIWBzU79XPvU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1vmSXM-0005y3-Fq;
	Sun, 01 Feb 2026 08:10:29 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1vmSX6-0005wk-Up
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 01 Feb 2026 08:10:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iKJM5FekupxGXax7BEjPAzFs9OgvHeN0OQc3ubwHQ3o=; b=KLhKHxWhqP1Y604O6no+fCQ8xC
 15BsxfLIa0aRYXZ9VsL1srBSKi1vOY77nPikK/NcIdu1pPZLtKTonj3yv75DmC/BvmC7PDUIdMIBl
 Tkku1tC3YI344/NbvbFFTzHt8EmZi0XrbJY+zV2yhRdDBALJJzT9Ylv0fvBVzQwD7+oQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iKJM5FekupxGXax7BEjPAzFs9OgvHeN0OQc3ubwHQ3o=; b=B9rEgul3PFzT89XunEBCWZWUS/
 maKmsH670KnnVkQ7Xtrh7e9TXndHBG/CFPLGT4HlUF7/V41EFVGO6GOeRPdkONgaUWduSge3ruxop
 YwvUqceiUvX5GVnLf9wfu3r2YAiTJPEYmMwZKWK2ObEtahhaGqFKCI0xh6edNlEW0fyU=;
Received: from mail-dy1-f175.google.com ([74.125.82.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vmSX7-0006Ni-E3 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 01 Feb 2026 08:10:13 +0000
Received: by mail-dy1-f175.google.com with SMTP id
 5a478bee46e88-2b740872a01so7340969eec.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sun, 01 Feb 2026 00:10:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1769933403; x=1770538203; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=iKJM5FekupxGXax7BEjPAzFs9OgvHeN0OQc3ubwHQ3o=;
 b=fBUDQ52XtMcfcHGtrj5Qpexi2G6Eig+5KVWrAm0opKQeIY4vbC4KBfpiQYw70nXen/
 mbh2zy1JDBIo/y8evKgfdSEXEMct5DyLOFXEdeqJfGbLOigsV+UR8X5mE5WTIPj0jffE
 9MSGsX5VwYNqTZBuUDXsf8nLaYHvzX+tSRN5qCEULOUJy/0J+IO9ELBxOsMonFX0YGRr
 SA4kaNfOlEvBUzh/AFkCmXGzhBit5tuCIpMGsNnCQP1M51YS24yr1ecAsm0xoac5pwWS
 r974F1t6kh68BdryXhvCJD3Udv2vMqCQwBa+1MFGXJE8ezksaUOizqgf6EdBAJxCuoLS
 mHTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769933403; x=1770538203;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=iKJM5FekupxGXax7BEjPAzFs9OgvHeN0OQc3ubwHQ3o=;
 b=ZOsQgCYmK86M9Jrg28ZkNSwEHUDMHIfoxd7oKfKAkLhHpTzbfZQkf30ry95LA4SFnY
 lJPSyeeCGlZ0xsQfX6cxol2RY+f1bpB96J3lbCsDOuvRcUfNTDNODkPh9bVy4pZ+1hOf
 Xrx96LzsLQXH6+/DY9ssT3EblUW+eTryAROgq7RRanhsK5Q/JdnWJyXNuKcmYc0vZxsV
 vK5kifVvwNfI3wBWBn10QJEL2Rb/XMBA6l+CAT5PfLla41R3aXCwbBgBs0XDzGRU8TBe
 P75pMXn8fOjDS+c2oVAQ1mw/iUC+7BDz7Zi0eBKYZy4/SYnXqRQh+Jc5DB53Q3/chXFp
 TA8A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWQyugYkNWZYaevqZghzXgVz4GkwuAQyctAVermkafqSjQ64AaOzqjoBGVAPHHi0fyza0gTb9wsVUs06i77Gg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyHcCYckH0ZQSIwSl6DbqJbAS3b0Z18vjuG6edxlBj32G+U47b2
 49CRXAHmIT9xr0Fn6Lpc0z3ZvI6jKpalm5Mm9VYiNY5qnNerNhpCFW4k
X-Gm-Gg: AZuq6aIFTLrZeCpJm5bWn72ebN7tpdFGYAY0Bt6yyoDRWY23BRMm6M3AMpz97ki4Rlr
 I8+TasfjYGaXOYF/rSMPdU2k4FFAXQ08CEjRPpAIpRzgKCLtuzZVaGDr3/GP3nwIV6CdIqxI71k
 j3cnLpguUYju4wQhq89KxYYVXrzKriVHRz0wXzoaBNlZiwFDZci4xI7zeO9YQ7kdmYhlF3e5BEG
 tkUb6xZMSfrot9f82cWFheUlf+MNU6gt5cEFq0VWE/C+t+BdMRb2vtUjn/shbHVOckbLKw0iJGG
 FItjVH/csgf7H7N7IXyP57UQO/VoRJgKFl5eJ3iXUfgQFsqD4/MLWGPdumaPGOFyAWLPxndh5SS
 0NrMhMfRwCc1P6HNlq8NQytjm0Vr4SfIXrJ78+ajBh/NSc5cMbQMFtHVoaRjHlW9hgFhF85T2bQ
 VdPYzkIj0usu4bOPb2qhM2FCiP
X-Received: by 2002:a05:7300:2151:b0:2b6:f0fc:8c47 with SMTP id
 5a478bee46e88-2b7c8664427mr3028848eec.16.1769933402697; 
 Sun, 01 Feb 2026 00:10:02 -0800 (PST)
Received: from google.com ([205.220.129.37]) by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2b7a1add664sm17783605eec.26.2026.02.01.00.09.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Feb 2026 00:10:02 -0800 (PST)
Date: Sun, 1 Feb 2026 08:09:34 +0000
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Vishnu Sankar <vishnuocv@gmail.com>
Message-ID: <aX8JwB7F8_ypJRAz@google.com>
References: <20260127103907.20269-1-vishnuocv@gmail.com>
 <20260127103907.20269-2-vishnuocv@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260127103907.20269-2-vishnuocv@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Vishnu, On Tue, Jan 27, 2026 at 07:39:05PM +0900, Vishnu
 Sankar wrote: > @@ -470,6 +509,14 @@ int trackpoint_detect(struct psmouse
 *psmouse, bool set_properties) > psmouse->vendor, firmware_id, > (button_info
 [...] Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [dmitry.torokhov(at)gmail.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.125.82.175 listed in wl.mailspike.net]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vmSX7-0006Ni-E3
Subject: Re: [ibm-acpi-devel] [PATCH v6 1/3] input: trackpoint - Enable
 doubletap by default on capable devices
X-BeenThere: ibm-acpi-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: thinkpad-acpi/ibm-acpi Linux driver development
 <ibm-acpi-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=ibm-acpi-devel>
List-Post: <mailto:ibm-acpi-devel@lists.sourceforge.net>
List-Help: <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: corbet@lwn.net, linux-doc@vger.kernel.org, derekjohn.clark@gmail.com,
 linux-kernel@vger.kernel.org, vsankar@lenovo.com,
 ibm-acpi-devel@lists.sourceforge.net, hmh@hmh.eng.br,
 linux-input@vger.kernel.org, mpearson-lenovo@squebb.ca,
 ilpo.jarvinen@linux.intel.com, platform-driver-x86@vger.kernel.org,
 hansg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vishnuocv@gmail.com,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:derekjohn.clark@gmail.com,m:linux-kernel@vger.kernel.org,m:vsankar@lenovo.com,m:ibm-acpi-devel@lists.sourceforge.net,m:hmh@hmh.eng.br,m:linux-input@vger.kernel.org,m:mpearson-lenovo@squebb.ca,m:ilpo.jarvinen@linux.intel.com,m:platform-driver-x86@vger.kernel.org,m:hansg@kernel.org,m:derekjohnclark@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[dmitrytorokhov@gmail.com,ibm-acpi-devel-bounces@lists.sourceforge.net];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[ibm-acpi-devel@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,gmail.com:s=20230601];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,gmail.com:-];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[ibm-acpi-devel@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,ibm-acpi-devel-bounces@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[lwn.net,vger.kernel.org,gmail.com,lenovo.com,lists.sourceforge.net,hmh.eng.br,squebb.ca,linux.intel.com,kernel.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[ibm-acpi-devel];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: C9B02C52EF
X-Rspamd-Action: no action

Hi Vishnu,

On Tue, Jan 27, 2026 at 07:39:05PM +0900, Vishnu Sankar wrote:
> @@ -470,6 +509,14 @@ int trackpoint_detect(struct psmouse *psmouse, bool set_properties)
>  		     psmouse->vendor, firmware_id,
>  		     (button_info & 0xf0) >> 4, button_info & 0x0f);
>  
> +	/* Enable doubletap by default on capable devices */

This is obvious from the code, please drop the comment.


> +	if (trackpoint_is_dt_capable(ps2dev->serio->firmware_id)) {
> +		if (trackpoint_write(ps2dev, TP_DOUBLETAP, TP_DOUBLETAP_ENABLE))
> +			psmouse_warn(psmouse, "Failed to enable doubletap: %d\n", error);
> +		else
> +			psmouse_info(psmouse, "Doubletap enabled by default!\n");

Drop psmouse_info(), no need to make the driver too noisy.

Otherwise:


Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
