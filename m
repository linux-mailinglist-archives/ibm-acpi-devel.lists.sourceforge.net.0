Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C6779D4D0
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 12 Sep 2023 17:30:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1qg5L6-0003M5-HE;
	Tue, 12 Sep 2023 15:30:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hello@maedartmann.name>) id 1qg5L4-0003Lx-RS
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 12 Sep 2023 15:30:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Subject:References:
 In-Reply-To:Message-ID:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w9qnW1NaqdjbZNYC3LCJ761R5Bid7EEv8HbF/vZt1b4=; b=I7S72EDNkX38D8XgF2CkgjGywY
 QlQ6JNrxwQDO8+E1tvfl2MUo9kmgtOAQREwaS9GoFbJDOpbNfTo2dVZ9pNTA8zC7SxFLSm+HnsLy9
 WCIzfqF4ue0q5ABIdHGaepX13OyNyeGQ4YslzTF1Cxz4KjD4FEXXiwpHJ3Gm/PO+BWUc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Subject:References:In-Reply-To:Message-ID:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w9qnW1NaqdjbZNYC3LCJ761R5Bid7EEv8HbF/vZt1b4=; b=l1yPSkBDwu8jeeKZsOfJJaDnw1
 mxBZMCtbjRDzE05d1EuJQ0zttWucZmbygSA096wk524/IkTS0hF9/mxgtAkDOgW2YCDjOXN5mPUPt
 hTa/7k+QnmnE6CwK3ZOJab7HWKUQCQZsEEnCZbLXikejv/G9Wty+Xug7na1jgzroNhCU=;
Received: from mail.dartmann.net ([202.61.205.135])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qg5Kx-000840-7k for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 12 Sep 2023 15:30:07 +0000
Date: Tue, 12 Sep 2023 17:12:16 +0200 (GMT+02:00)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=maedartmann.name;
 s=dkim; t=1694531539;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=w9qnW1NaqdjbZNYC3LCJ761R5Bid7EEv8HbF/vZt1b4=;
 b=bg2QCcXZ6PDjiEZBnOba44CIv/YUJbW9Lx0VCHyXGFBZki3bW5y2fSUSUr+9iHjsRVxQ03
 +Nc0/IUnaR6v5mLuOl9TlFmcOTmIBUVUk0UYT6TWDKJU32U4km7SWuYTmzHsgAQz+4CI5s
 f43uxri0+IRnt96so1FlBjjPCw78B1H/JWeSQ+YjQwwQmflllG2Fdh2355kWeHR3BNBUyg
 XmmapllsU/xpPcyXGgO8zcCZY8VUcTlBNbtWAqTkvy6fmmgXqhZ7GLaLUVHowv6MQPL9YH
 0Rvis3/zdgth38YJhqvl3PUBhigyhzBpWhLNjGDxu6uPhyPLSrmlCcqH1F64aA==
Authentication-Results: mail.dartmann.net;
 auth=pass smtp.mailfrom=hello@maedartmann.name
To: ibm-acpi-devel@lists.sourceforge.net
Message-ID: <59c84826-b333-47b2-8ed4-b34495d396e5@maedartmann.name>
In-Reply-To: <5ahTXXVCA2HRvBMLjyL-HGlXN_YWmJ3WmwSVkUaNHw6J3GVtUo2y9ugqiH3ITu_wDbmnvn1pz76PlyreYUk9Wjcd7mYf2KuHXe2Tn0oiwpI=@protonmail.ch>
References: <5ahTXXVCA2HRvBMLjyL-HGlXN_YWmJ3WmwSVkUaNHw6J3GVtUo2y9ugqiH3ITu_wDbmnvn1pz76PlyreYUk9Wjcd7mYf2KuHXe2Tn0oiwpI=@protonmail.ch>
MIME-Version: 1.0
X-Correlation-ID: <59c84826-b333-47b2-8ed4-b34495d396e5@maedartmann.name>
X-Spamd-Bar: /
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, I have the same issue on my machine (same hardware). It
 is because the driver that usually controls the flipping mechanism does not
 work with the screen orientation sensor in the L13 Yoga G2 AMD. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1qg5Kx-000840-7k
Subject: [ibm-acpi-devel]  L13 Gen 2 AMD Yoga
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
From: Mae Dartmann via ibm-acpi-devel <ibm-acpi-devel@lists.sourceforge.net>
Reply-To: Mae Dartmann <hello@maedartmann.name>
Content-Type: multipart/mixed; boundary="===============7011797941048835690=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

--===============7011797941048835690==
Content-Type: multipart/alternative; 
	boundary="----=_Part_3_75553886.1694531536756"

------=_Part_3_75553886.1694531536756
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

I have the same issue on my machine (same hardware). It is because the driver that usually controls the flipping mechanism does not work with the screen orientation sensor in the L13 Yoga G2 AMD.

I wrote an entry into the mailing list a while ago and never got a response. I think we're on our own with this issue...

Best,
Mae

------=_Part_3_75553886.1694531536756
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
 <head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
 </head>
 <body>
  <span dir="ltr" style="margin-top:0; margin-bottom:0;">Hi,</span> <br> <br> <span dir="ltr" style="margin-top:0; margin-bottom:0;">I have the same issue on my machine (same hardware). It is because the driver that usually controls the flipping mechanism does not work with the screen orientation sensor in the L13 Yoga G2 AMD.</span> <br> <br> <span dir="ltr" style="margin-top:0; margin-bottom:0;">I wrote an entry into the mailing list a while ago and never got a response. I think we're on our own with this issue...</span> <br> <br> <span dir="ltr" style="margin-top:0; margin-bottom:0;">Best,</span> <br> <span dir="ltr" style="margin-top:0; margin-bottom:0;">Mae</span> <br>
 </body>
</html>
------=_Part_3_75553886.1694531536756--


--===============7011797941048835690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7011797941048835690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============7011797941048835690==--

