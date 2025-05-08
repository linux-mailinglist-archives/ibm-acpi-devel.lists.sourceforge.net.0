Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9B7AAFE1A
	for <lists+ibm-acpi-devel@lfdr.de>; Thu,  8 May 2025 17:02:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:In-Reply-To:Message-Id:To:From:Date:MIME-Version:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Nb5AapJcktKuldtSxtSYVAuY5d0hdKZtjSUE0O/lMZI=; b=kQ5zpz51BCysqzW4HgcAgKSym+
	fcQvGnV+h4W037MOUk0J/bsYLWe0eNbNoOt7n5gqEJnpRKiHW5zDK9B1MoR1TQJEWgGRBfEPZOtEY
	YGQxmzydHRO/zKs4wAuXkdvzVE5M3p6EfywGxOJHDXcphY29GtAE17mg250mPFDby0FE=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uD2la-0000al-8o;
	Thu, 08 May 2025 15:02:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1uD2lW-0000ae-T9
 for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 08 May 2025 15:02:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=g8AJp5cmHz955S1tjFyzd5FQ3sp+0zBbwr569rPT9yw=; b=gpa6Ewee3yXhojabDCSmx2MFFq
 e6tmfDfXIHfKOwfZKKHh3Bu0veKCUp+9kxFrwZ9vxFveYoUn4LltW+qOs8K/wBz+Z34c2r8hIkyNv
 dxTbc907lltn2BzdU+S0ejAoKVJtL7RpK94AEYx8Qv74BANQ/TGCtd9jSPoc7+GEian8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=g8AJp5cmHz955S1tjFyzd5FQ3sp+0zBbwr569rPT9yw=; b=jx3piiJlju5DGO3CMfA3aIcNx1
 T1841gU/IH+ehUHtsWuvduY3VrbS6g+MyskW2xaU94TlhAT6u+xuqtljRh9XjEA+3G8UNr76FRadC
 zGE00vS3Oehr8vft3p0C+2n0PIubfWdMV5CDLzo6kE7Wl4twF4mz5KPr0gpOPXqTB+GU=;
Received: from fout-a1-smtp.messagingengine.com ([103.168.172.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uD2lS-00088t-7K for ibm-acpi-devel@lists.sourceforge.net;
 Thu, 08 May 2025 15:02:25 +0000
Received: from phl-compute-12.internal (phl-compute-12.phl.internal
 [10.202.2.52])
 by mailfout.phl.internal (Postfix) with ESMTP id 5F6B613801E9;
 Thu,  8 May 2025 11:02:11 -0400 (EDT)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-12.internal (MEProxy); Thu, 08 May 2025 11:02:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm1; t=1746716531;
 x=1746802931; bh=g8AJp5cmHz955S1tjFyzd5FQ3sp+0zBbwr569rPT9yw=; b=
 NBy+0edq4czxBfkDiIggyfrdf8earIPi9fo6cODr5KAmtTEykF4VOzPhGZLQlOPS
 c2pBkrpmTue5W08BuE6pz7znLy6OJpUTD+d1vZnKXGHswv1R/UF+TGOxVvm1LKl7
 lEWWQAbMZHa2P4d4uFM+qO7yQCOv6f/IKWOJ7rw+GqmLJ3Z1HJbjzu0z4kH9y+Im
 WuhovyU1m0M8+ckD7u15+jt1zYCFS8ne/imXsmBzLfMZac6FOiSmZe7KLHpdgEPu
 6WtPEuWgDN7kWPYLwMEOtdSnUJIf2AKfLzlhRVPMuQVQj4pPjRIfQ8Tzajp0djgA
 bg/wqdwAUk9G1HXFfbusRw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1746716531; x=
 1746802931; bh=g8AJp5cmHz955S1tjFyzd5FQ3sp+0zBbwr569rPT9yw=; b=O
 qWQ7ATuIh4/FAgKEFcyJDxviX1gZXjB3xyOX96XAt/FASMFnPOgyEGgFxgueyTZI
 tGcP/5dEazFORH2W/vnA8FI3COjRHRtM0+VI8Ie+mNWtS7ZK7XlvCnjjQgT8NPU9
 +yytkcEzmbpRk6EIoZ0iNTJ/gIYhwxEvY0IWzJJHdQqYiJ4IkeEfKBNKmF3laSOW
 BEZvt+Kft+rUIi/Zq/q1+dnNgWijUv3lxMmhCOi6ZnmU0mb1f2+iURefb8zm7dPT
 4zmXq9KrBSrb2xEImCVCyZhu6NhDQaYRmdASpmmJWx0c3OaDhx8MXsLEzMw1JKqr
 NhC8drt+g6ksp9fUXfijw==
X-ME-Sender: <xms:csccaG_WRHa0Yznc8RinZBkip0aoUkYDtGDGmHcDVo2I2dHJ8RxWxg>
 <xme:csccaGsjQWynD7axHMAnQvIvpu6lw60S5h5P9JARgyGICGcCPOgG93Zj2ue-J05hi
 EcTGJPH6_2aFu2x9-k>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvledttdegucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
 pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
 gvnhhtshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtjeertder
 tddtnecuhfhrohhmpedfofgrrhhkucfrvggrrhhsohhnfdcuoehmphgvrghrshhonhdqlh
 gvnhhovhhosehsqhhuvggssgdrtggrqeenucggtffrrghtthgvrhhnpefhuedvheetgeeh
 tdehtdevheduvdejjefggfeijedvgeekhfefleehkeehvdffheenucevlhhushhtvghruf
 hiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmphgvrghrshhonhdqlhgvnhho
 vhhosehsqhhuvggssgdrtggrpdhnsggprhgtphhtthhopeekpdhmohguvgepshhmthhpoh
 huthdprhgtphhtthhopehikhgvphgrnhhhtgesghhmrghilhdrtghomhdprhgtphhtthho
 peifpggrrhhmihhnsehgmhigrdguvgdprhgtphhtthhopegrnhgurhhihidrshhhvghvtg
 hhvghnkhhosehlihhnuhigrdhinhhtvghlrdgtohhmpdhrtghpthhtohepihhlphhordhj
 rghrvhhinhgvnheslhhinhhugidrihhnthgvlhdrtghomhdprhgtphhtthhopehisghmqd
 grtghpihdquggvvhgvlheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvthdprhgt
 phhtthhopehhuggvghhovgguvgesrhgvughhrghtrdgtohhmpdhrtghpthhtoheplhhinh
 hugidqkhgvrhhnvghlsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepphhl
 rghtfhhorhhmqdgurhhivhgvrhdqgiekieesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:csccaMCOkgWp3QLLhXiskazPgE_o1E1NE9YkYTJ3FLp-Xt02QmNrUQ>
 <xmx:csccaOezimliUHnHX-J3win0h4G3OoNarvBkp8L-lfylM-cj5u2pbw>
 <xmx:csccaLPn5_RTUVaJ_UM_hRG1I9XhEVDRnoHsFuJuABjsJB3llFLJrg>
 <xmx:csccaIkV0_Sh-9Rw7hd5wiLR7T5i0puERaCC2jDDH9GbFR-EXS60Qg>
 <xmx:c8ccaChglLKv_xTSssEMyL_TTHq6N9QCXL7NY8WkVpzRdXKHqFF4fcwF>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id ADC953C006D; Thu,  8 May 2025 11:02:10 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: T747cf12b99a35bad
Date: Thu, 08 May 2025 11:01:50 -0400
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Message-Id: <d423ac66-bb8f-44e4-b995-f88cf2ece70c@app.fastmail.com>
In-Reply-To: <aBzAWrgEgmnAnum-@smile.fi.intel.com>
References: <mpearson-lenovo@squebb.ca>
 <20250507190456.3004367-1-mpearson-lenovo@squebb.ca>
 <20250507190456.3004367-2-mpearson-lenovo@squebb.ca>
 <aBzAWrgEgmnAnum-@smile.fi.intel.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, May 8, 2025, at 10:31 AM, Andy Shevchenko wrote: >
 On Wed, May 07, 2025 at 03:04:35PM -0400, Mark Pearson wrote: >> Add API
 to be able to get the thinkpad_acpi various handles. >> >> Will use [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.144 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [103.168.172.144 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [103.168.172.144 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [103.168.172.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uD2lS-00088t-7K
Subject: Re: [ibm-acpi-devel] [PATCH 2/2] platform/x86: export thinkpad_acpi
 handles
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
Cc: Armin Wolf <W_Armin@gmx.de>, ibm-acpi-devel@lists.sourceforge.net,
 ikepanhc@gmail.com, linux-kernel@vger.kernel.org,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Thu, May 8, 2025, at 10:31 AM, Andy Shevchenko wrote:
> On Wed, May 07, 2025 at 03:04:35PM -0400, Mark Pearson wrote:
>> Add API to be able to get the thinkpad_acpi various handles.
>> 
>> Will use this to start pulling some of the thinkpad_acpi functionality
>> into separate modules in the future.
>
> ...
>
>> +#ifndef _TP_ACPI_H_
>> +#define _TP_ACPI_H_
>
> + include for  acpi_handle typedef.
> Or it the forward declaration works
>
> acpi_handle;
>
> but I haven't checked and my gut feelings that it's not correct syntax as
> compiler doesn't know what the heck this word means.
>

OK - I'll have a look and figure out what makes sense.
Thanks for the review
Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
