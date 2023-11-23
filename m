Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7037F5641
	for <lists+ibm-acpi-devel@lfdr.de>; Thu, 23 Nov 2023 03:05:03 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1r5z4v-0006CM-Tl;
	Thu, 23 Nov 2023 02:04:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1r5z4u-0006CF-Ci
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 23 Nov 2023 02:04:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Subject:Cc:To:From:Date:References:
 In-Reply-To:Message-Id:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vShwBIiU1qk+sBYM8a4RM2atQ1b7lFgMjSeqpTAPbfs=; b=cnENp+LUs9MYNdWdceohptdqNQ
 n+J7kjk7oMeTbs4nTxz+q27u/3ORKBloB5q3+orueaKloiBV+wuu4dE1OjvKrSebn92vnO49v3Iuf
 tcjAsgZ/XpCs83Un+xe1XyTgHrhNKwkbZv6qgfTTRKNM/Zr5hRPDXkLI/ryghS5smZms=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Subject:Cc:To:From:Date:References:In-Reply-To:Message-Id:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vShwBIiU1qk+sBYM8a4RM2atQ1b7lFgMjSeqpTAPbfs=; b=YUd9VP9W4gB/XgBuFQLy2hx0zn
 56WUCkFPgdQqW5+D+Nn6WcgTbDlYmdkmqoOKObCAu+xQQBIS5ZJ4L0VXv8pM6CTOyH/PDb4RbZtKS
 4Qtnl+YlB1g4h59+biyf9kg6Bc7N/OTdn4IUH3d/Zis9ZK+tPCfywLTtQttzi2rPTxWQ=;
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r5z4s-00DCbN-NW for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 23 Nov 2023 02:04:28 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id C7AA43200A2C;
 Wed, 22 Nov 2023 21:04:18 -0500 (EST)
Received: from imap52 ([10.202.2.102])
 by compute3.internal (MEProxy); Wed, 22 Nov 2023 21:04:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-type:content-type:date:date:from:from:in-reply-to
 :in-reply-to:message-id:mime-version:references:reply-to:sender
 :subject:subject:to:to; s=fm2; t=1700705058; x=1700791458; bh=vS
 hwBIiU1qk+sBYM8a4RM2atQ1b7lFgMjSeqpTAPbfs=; b=Rj+fMAEVfv6CXMwB7A
 B97pLsfITXQlTrUv8malOnHh0W9rP3pq/qZt5XmPoNtJowhPYmL2Uk0OFhQFz6If
 AUIlY/RX51yw+UHN/zUnuYD050npN6QIFgS2xASRDJH3OiRtRwUayLAR6wmj8lFu
 vO1kWefD2St5fkuC1vpBYieziwstLPwAWyPC03VgT2Ve8UxM8a4bqNkCiAa335En
 CyII1UX3M6wsvtHAz7QY4vCuuwu1ckB+pXJaIcM3XwotCssZkX/7xGZ8ya8Xt14i
 aDn7IPLHECuR5xfYXGebn5awAGshrye/NwaKzg9tyApRf9uyl2OzbFaYg8wi89/W
 mHpw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1700705058; x=1700791458; bh=vShwBIiU1qk+s
 BYM8a4RM2atQ1b7lFgMjSeqpTAPbfs=; b=GLJ8SRTmzD9i2PjqBH7GII1xljvWU
 hGcZdFbGj0LJ7c3ju+fHxLMVDf2HH8e45VyqSJ24jOsnDtSUH0euX63lSczX6cJc
 S9Y4kcAdiy+bfAltvsM6bFXOoEn277e5zmCTAIF+vwNDWX87ZiBKpL4PmCeClgZ4
 PDJ4d9nu2fVGFFlEeeBagQOXZtVDq3Wkc0QczMpgztNwm5WzY3u+Bc5t2nDCzxbj
 b+iP0V+yp67xZt1Un6OlitMmyud4LrUvfqlXjecptlGnxZha/PO6nPWS7E9p/Uph
 yUqj6ZbJuXFJVmCE7XFH4GN2R+Cwo6suF8qTFXi7oOeV1cchCFF4kH32A==
X-ME-Sender: <xms:IbNeZU0dO10cMzwoNo_yyQcxQJDzgi_yDveGZ2aRMYI1JEUkDKpSTg>
 <xme:IbNeZfHDcN-y3Db5Jt-J0DOBoIBAYtbwlnnaUbQDyziZpMyflV47umn32lQwiueJI
 Ts9b3ncOS7C4ciU3Qw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudehvddggedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvfevufgtsehttdertderredtnecuhfhrohhmpedfofgr
 rhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssg
 drtggrqeenucggtffrrghtthgvrhhnpeeiueefjeeiveetuddvkeetfeeltdevffevudeh
 ffefjedufedvieejgedugeekhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
 epmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggr
X-ME-Proxy: <xmx:IbNeZc5LmgrAoTV5nraJhz1Rg-Gx-NorldAbmRtqWCIrD66K0k1gkQ>
 <xmx:IbNeZd3GmO5qWyDJ25_fkzlueY0KXqdqqej1J1vgNIfPVKIJDCuVGw>
 <xmx:IbNeZXH-tg9wBC-0uOdZ69mrgdC3dSveXfHPLwopC45LkB9zX7qxDA>
 <xmx:IrNeZbhRMuIghaouNWIvdkd93DLYZd3VodIHYDil1uFJZKBsHIT0jg>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 85559C6008B; Wed, 22 Nov 2023 21:04:17 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-1234-gac66594aae-fm-20231122.001-gac66594a
MIME-Version: 1.0
Message-Id: <7ff45ca3-cf28-4a7c-aedf-3dcb51129a3d@app.fastmail.com>
In-Reply-To: <20231122194453.GA497690@gmail.com>
References: <mpearson-lenovo@squebb.ca>
 <20231113165453.6335-1-mpearson-lenovo@squebb.ca>
 <20231122194453.GA497690@gmail.com>
Date: Wed, 22 Nov 2023 21:03:57 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Breno Leitao" <leitao@debian.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Breno, Thanks for the review! On Wed, Nov 22, 2023, at
 2:44 PM, Breno Leitao wrote: > On Mon, Nov 13, 2023 at 11:54:33AM -0500, Mark
 Pearson wrote: >> @@ -10355, 6 +10361, 17 @@ static int dytc_profile_set(struct
 platform_profile_ha [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [64.147.123.25 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1r5z4s-00DCbN-NW
Subject: Re: [ibm-acpi-devel] [PATCH v3] platform/x86: Add support for
 improved performance mode
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
Cc: ibm-acpi-devel@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 "Limonciello, Mario" <mario.limonciello@amd.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi Breno,

Thanks for the review!

On Wed, Nov 22, 2023, at 2:44 PM, Breno Leitao wrote:
> On Mon, Nov 13, 2023 at 11:54:33AM -0500, Mark Pearson wrote:
>> @@ -10355,6 +10361,17 @@ static int dytc_profile_set(struct platform_profile_handler *pprof,
>>  	if (err)
>>  		goto unlock;
>>  
>> +	/* Set TMS mode appropriately (enable for performance), if available */
>> +	if (dytc_ultraperf_cap) {
>> +		int cmd;
>> +
>> +		cmd = DYTC_SET_COMMAND(DYTC_FUNCTION_TMS, DYTC_NOMODE,
>> +				       profile == PLATFORM_PROFILE_PERFORMANCE);
>> +		err = dytc_command(cmd, &output);
>> +		if (err)
>> +			return err;
>
> Aren't you returning holding the 'dytc_mutex' mutex?
>
> From what I understand, in the first line of this function you get the lock,
> and release later, at the exit, so, returning without releasing the lock might
> be dangerous. Here is a summary of how I read this function with your change:
>
>
> 	mutex_lock_interruptible(&dytc_mutex);
> 	...
> 	err = dytc_command(cmd, &output);
> 	if (err)
> 		return err;
>
> unlock:
> 	mutex_unlock(&dytc_mutex);
> 	return err;
>
>
> I think "goto unlock" might solve it.

Yep - you're right. Good catch. 
Will fix in the next revision.

Thank you
Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
