Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 82048B1BDA6
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  6 Aug 2025 01:59:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NiLqduiofWHhzU8Ioy1efHARhCqWDRXWmbFtuVvumuQ=; b=aD2jzWocM4jYOwTdu+Q1Z0HGvc
	W0C80FNJa4JQTH1RD4WYvHIA0LVYNYpCKHZaksqrCmjwXEm9B41Iuwx+OPrBgAEtlBGMAuXqow2eQ
	0rA4B1YOC8Rs5mcRhrqHoNc3NLKKHy6UWJCxlPr1JAIyxhOZvD36E70bzRtSad4e05Ek=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ujRYm-0003oj-Ew;
	Tue, 05 Aug 2025 23:59:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gdamjan@gmail.com>) id 1ujRYl-0003oc-G6
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 05 Aug 2025 23:59:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J8MPLCxxgvMt/Jo9fWADJ6dH96sIG37aNOhnZhrY9I0=; b=B5jY2HS8+i1mdGDZd6fc+gv0Hg
 nG5+GjE3yL9/N9/D22jqIpDdoLm04Int3Pr388qWJHziT6Z19KRKtsHLst0dO4mtDsAenhBeinPn3
 gWpEcgNWMlvx7I6QD9hIrY3qHjKu5m5A7QBOgcRVUX6R1Ys1nkgd/24u/Qu2Y34OwiDA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=J8MPLCxxgvMt/Jo9fWADJ6dH96sIG37aNOhnZhrY9I0=; b=Z
 gydHpa+LO89qJTW+q3dnqF+/P4ywraxWhZq5GpD/CiyM3rmZNZCY3zPY4NJTENA+AdQWBDZr6NCJh
 yP3pohO55v0CwHJCoxIDygaCYnuVB/QYRTNIOWzFbQun+55/Ka+bvmaSziZiZomFL8igdyc9hqsqz
 Aqewm/UjIErTPK8w=;
Received: from mail-yw1-f178.google.com ([209.85.128.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ujRYl-0004Kx-6u for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 05 Aug 2025 23:59:11 +0000
Received: by mail-yw1-f178.google.com with SMTP id
 00721157ae682-71b5279714cso46324157b3.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 05 Aug 2025 16:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1754438340; x=1755043140; darn=lists.sourceforge.net;
 h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=J8MPLCxxgvMt/Jo9fWADJ6dH96sIG37aNOhnZhrY9I0=;
 b=C94+LRlmt3Az1sSwnwO6zL0pJXvlbmpeyU1p9jX24YABcw+pWZFuOOKDJiXiiH3x/O
 sqweX8ETdpRwMbA3tOrgME2LOmhY3KhoV3wq8ryNojvd7toAFXH651KP82vbOYbCf7HE
 JvGQbrJ8mIov1ODEn7KlhBRtAhyP2KkIsJxepCp0oTbF8C2/mMOy2M9vSj4l9epH1yj+
 KdPu0MRZp7VEKNoyJAQ/utwR+ukPUSREIizArtb+R/dAZCfMvQGobGb0eNMixMRA1N5m
 pInN/rFx9CuFsKEcKUOQJnzdXNXThBuBi/b1t82Mpi4TMXARqOE3jZWTYdnFkc6/CZ6E
 ooUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754438340; x=1755043140;
 h=to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=J8MPLCxxgvMt/Jo9fWADJ6dH96sIG37aNOhnZhrY9I0=;
 b=SunmaiD2WTU3EBOxX53F+4djKqLqs+FeLmJT8y22lXjh1KnbCUqwwTxy+bCo/MkKIO
 JmlZoafpOQANwfinpe/UxO2BYs+PzAM2vhWuO9TtxKFhBTcENMy0HVbQnYuxNeNOrhU5
 Is+uYX01/98EOFdAB4oCpeJczjc4e3j+iG14uUIJWuNjvBE8E6WYkSMYfjsd/IwwjHS6
 LiTfgrkLeI3qTnsIuJA3qtTL/x7KArLXy6yuYrvrRAdW0q9zIh1xaw6/WlN8NW0ImkQS
 BDZE1BN7Igf5sTCbYTzOn+NSm0Ff58OxLCR/PvJs4WRGk01GMH9bHpoUEGCOX/h9ki8K
 cJAQ==
X-Gm-Message-State: AOJu0YyUhSyl0UzLoe8hr5T0ZSSqSVI1g/h0q+o/yj5C4xYGv44sSTNM
 LWBXIp74jpT4DC6YUlUK/gI7+JF2PBEYPz6uS8oSZiYz83DfOZ+H1w9Z4CAL6cA4q5DpH+vt1pC
 qC8TD/oYQUD81I6WaY9w6p0ZRTgbv9tZK0joTNfbTKA==
X-Gm-Gg: ASbGncuIm/J1RZIEj//0P+i5VtDB1+UwDiwErFrBdpdzTsTRHwIBMJN6g9sTSENzc4+
 vSAzJ7D3hoNHkLWgfQM5hpDsFmTP540ep8Ljk+i7dlxCqnnlMjIwm2uQJJP8blVLZRk3VjSnECj
 PeFSY5FtoXJRdVmfGYk+88LqSqtHEI9m34xEd2nYYw/rszWMg9WkaLiO+gs68fYCToM3xjt8tB1
 XHkSKK8oXIne+6w8g==
X-Google-Smtp-Source: AGHT+IEHOc5H0HmDiYsvccnjAccaNsPtresT0Rwn64QLoJwclnx1IM/bwCjWKw8EB7ZARJg9IFdUeTNbE5KzWX5c6tE=
X-Received: by 2002:a05:690c:660f:b0:719:f37e:e69c with SMTP id
 00721157ae682-71bc9886a2bmr14618237b3.36.1754438340148; Tue, 05 Aug 2025
 16:59:00 -0700 (PDT)
MIME-Version: 1.0
From: Damjan Georgievski <gdamjan@gmail.com>
Date: Wed, 6 Aug 2025 01:58:18 +0200
X-Gm-Features: Ac12FXyKbQ13C89QDtRWUirAJvLYUxFZAmq2qh9kupYwjUC3krRWGGpUd_iihuk
Message-ID: <CAEk1YH6D_r8koPvb9g+y+2Va4iLWKjGAmf05O9Wke==SaHOqvA@mail.gmail.com>
To: ibm-acpi-devel@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  hopefully last of my barrage of X9 issues I'm getting this
 in the kernel logs: kernel: thinkpad_acpi: ThinkPad ACPI EC access misbehaving,
 disabling thermal sensors access how concerned should I be about this? 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [gdamjan(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.178 listed in wl.mailspike.net]
X-Headers-End: 1ujRYl-0004Kx-6u
Subject: [ibm-acpi-devel] ACPI EC access misbehaving
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

hopefully last of my barrage of X9 issues

I'm getting this in the kernel logs:
kernel: thinkpad_acpi: ThinkPad ACPI EC access misbehaving, disabling
thermal sensors access

how concerned should I be about this?

the system is the Thinkpad X9-14, or rather:

```
kernel: DMI: LENOVO 21QA0048RM/21QA0048RM, BIOS N4DET30W (1.13 ) 04/02/2025
...
kernel: ACPI: [Firmware Bug]: BIOS _OSI(Linux) query ignored
...
kernel: thinkpad_acpi: ThinkPad BIOS N4DET30W (1.13 ), EC N4DHT29W
kernel: thinkpad_acpi: Lenovo ThinkPad X9-14 Gen 1, model 21QA0048RM
```

-- 
damjan


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
