Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B504D8A5AF8
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 15 Apr 2024 21:41:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rwSCB-0006Ln-NQ;
	Mon, 15 Apr 2024 19:40:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1rwSCA-0006Lh-LR
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 19:40:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nECW4dFQOyypWbzxFUAI8T3e9FduAl7Mv8A1PasfnEo=; b=LaJcAIem4ZX11rBzI+gnXGPouU
 7WFt8NcmHoFuaiZxun6i10UhRyGnemDYyR13OErRBHmiXZ61VBMJwI6xxNva/oevFGwrZLaKe1vj5
 9wabuw94KlnMh+Whd5brVtykb7SRGlJs1cRc9c7x8gkSCXemyDyCeLwtS+UW70MkARu0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nECW4dFQOyypWbzxFUAI8T3e9FduAl7Mv8A1PasfnEo=; b=UVQ7l5mcdJzt3ogVHdoydYF/DM
 JpYkYwPnBxRLiK0UkWp0hrpTF0Mne+ketpe1OyBp1CZaTyrmpEJrgifFwUDrWOM1wATAXuQSyH+Wc
 vYBdEa5tfQZR198dQ9LjAXsjyoOEChFjXDystAEPIEHb79VYhBP87txS50IVjihOpqCM=;
Received: from mail-pg1-f178.google.com ([209.85.215.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rwSCA-000317-Hf for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 19:40:50 +0000
Received: by mail-pg1-f178.google.com with SMTP id
 41be03b00d2f7-5d3907ff128so2893742a12.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 15 Apr 2024 12:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713210040; x=1713814840; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=nECW4dFQOyypWbzxFUAI8T3e9FduAl7Mv8A1PasfnEo=;
 b=lrpAQp4YGsRTBhY5fNLdUkMtCvgjwac5MLni0wPB4nLWLgyCoNxWIZUJInv2E3ngrZ
 GBnGkKkm2wMYeOF9v2xWnLG0gQQaIUnYhCQ4MFlOLjIsOg6Wc4qUvDKFxiKkiMO5neJJ
 mRJccZIf3W988q2M+j6EeTmBdCjdz2nxyiIyjBQWsUGVAlTl2i5npJoUWR6XujzeFNRr
 MuublBTbkpz/agwi/QRmKQrR6DYOMmoXonAqWnzytrujoZdxv5Xf1htCK3CFAsd/ELSH
 DGP/zLzPx/+P12hADdEtGd6GVOAgpBQ4lKnBruVyRDn2btfOW49xjMrq0qYzLG1hhjw7
 rIdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713210040; x=1713814840;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=nECW4dFQOyypWbzxFUAI8T3e9FduAl7Mv8A1PasfnEo=;
 b=kYS1Qq1x0WaXsl1K7spSne/nbSApDkqfpWUFLfsEYxQopl7YqmfxUfP5o/etQ9Ah92
 MUfh/nXYRAFANgEObBOK63xsnz+Hko2TiNHrIKicB4p00/1G452jdwIyhK1WpPQ77PQq
 EXGo/FbQ+mFDoAYm+GoUrBAFcyw0DRCSTfMiEMGFUdBdlc1BUzAlZ0l2DF5WS0OriLg1
 5x/ASFpMwBiTSQjvlX4Hem5hUBiMMBquBt/YLPE6PWkznYZFTKPBanD6lZB0Sf6GFHgU
 DQlHa0NAZfpkbW9a9exWGgpaCixttclcfopjthHbxXIy8ws9QsVeHiAkYOjlQMfc6xLH
 fSjg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVh79orxe5QAOxz3vRLwO18jgd2oHcHEdjEQMy0Y/tFXrOg7Msf7hJDgru1uehAzz26d7wjoVW443OtRG/Kqvgh97m92C6A9u/2pylzetf/Iai0QIQ=
X-Gm-Message-State: AOJu0Yytx0Icvo+1eR3ywU3HmQT5U8i9DOSYCwQpbcVUT0ecYF0xdS7j
 Y8K02QnLMWVwEPIXpsRgbE5/8+BmW54YGV/YIcNPHSt3d3gQJRXC
X-Google-Smtp-Source: AGHT+IHabfXmkdzNGpRUvJgw4CTICvVnL2aJzRBUWETYyo+U0ii4Iu4bvX10MY+jIFKKbTYhWmnTYA==
X-Received: by 2002:a17:90a:f2ce:b0:2a2:e183:6306 with SMTP id
 gt14-20020a17090af2ce00b002a2e1836306mr9727764pjb.45.1713210039626; 
 Mon, 15 Apr 2024 12:40:39 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:fbbe:421b:9296:f28c])
 by smtp.gmail.com with ESMTPSA id
 j1-20020a17090a588100b002a058af5e12sm9083064pji.12.2024.04.15.12.40.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Apr 2024 12:40:39 -0700 (PDT)
Date: Mon, 15 Apr 2024 12:40:36 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Mark Pearson <mpearson-lenovo@squebb.ca>
Message-ID: <Zh2CtKy1NfKfojzS@google.com>
References: <mpearson-lenovo@squebb.ca>
 <20240324210817.192033-1-mpearson-lenovo@squebb.ca>
 <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
 <ZhR-WPx7dgKxziMb@google.com>
 <f3342c0b-fb31-4323-aede-7fb02192cf44@redhat.com>
 <ZhW3Wbn4YSGFBgfS@google.com> <ZhXpZe1Gm5e4xP6r@google.com>
 <92ee5cb2-565e-413c-b968-81393a9211c4@app.fastmail.com>
 <ZhcogDESvZmUPEEf@google.com>
 <91593303-4a6a-49c9-87a0-bb6f72f512a1@app.fastmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <91593303-4a6a-49c9-87a0-bb6f72f512a1@app.fastmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 10, 2024 at 10:48:10PM -0400, Mark Pearson wrote:
 > > I have a stronger preference to keep the KEY_DOUBLECLICK - that one seems
 less controversial as a genuine new input event. Please see my response to
 Peter's letter. I think it very much depends on how it will be used
 (associated with the pointer or standalone as it is now). 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.178 listed in wl.mailspike.net]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.215.178 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1rwSCA-000317-Hf
Subject: Re: [ibm-acpi-devel] [PATCH 1/4] Input: Add trackpoint doubletap
 and system debug info keycodes
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
 <platform-driver-x86@vger.kernel.org>, Vishnu Sankar <vsankar@lenovo.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, linux-input@vger.kernel.org,
 Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Peter Hutterer <peter.hutterer@redhat.com>, Nitin Joshi1 <njoshi1@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Wed, Apr 10, 2024 at 10:48:10PM -0400, Mark Pearson wrote:
> 
> I have a stronger preference to keep the KEY_DOUBLECLICK - that one seems less controversial as a genuine new input event.

Please see my response to Peter's letter. I think it very much depends
on how it will be used (associated with the pointer or standalone as it
is now).

For standalone application, recalling your statement that on Win you
have this gesture invoke configuration utility I would argue for
KEY_CONFIG for it.

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
