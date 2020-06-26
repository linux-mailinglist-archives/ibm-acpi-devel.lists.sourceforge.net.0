Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4712022E3B0
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 27 Jul 2020 03:44:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jzsBS-0005bn-P4; Mon, 27 Jul 2020 01:44:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <j@ganomi.com>) id 1jojnV-0005Zg-HV
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 26 Jun 2020 08:33:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j7zwGB8+SFfYMOx9v/r/ExfXhjiH39uO5xZ5y+TlS/c=; b=JqCuG8W2esYdMwx2QRHfIhmX1N
 o7tZWx+WqAaSFGg39oWPTIKxgnjyYypUubAoRI0a74GFWXBjMhNSgdhw2L+s9NKjGcaewrY0hxdc0
 bIKFTrVJoGH1UsHp/sc/+daCM+AjUXPRc50mH2Bt1FeMC4SpkBpBlRyuutp/zboDM36I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=j7zwGB8+SFfYMOx9v/r/ExfXhjiH39uO5xZ5y+TlS/c=; b=J
 sxf+DR8SmHcJb0kXW95mnDB4QXUSc9ueukLumkVQgfwon1RntC86vO243vs+AIJSpXgqo+aq+j/PT
 ArdzW7R/TOZI2ZNeyu4r+MxAhN26u2YN1VwhiL9vSdIGlwGHvi6eQnUtrZSKnhGF9fUsadfdQ4Lvb
 TrHCGGzipM8x6g4A=;
Received: from rs225.mailgun.us ([209.61.151.225])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jojnO-00GBsG-OG
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 26 Jun 2020 08:33:21 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=ganomi.com; q=dns/txt;
 s=mx; 
 t=1593160396; h=Content-Transfer-Encoding: Content-Type: MIME-Version:
 Date: Message-ID: Subject: From: To;
 bh=j7zwGB8+SFfYMOx9v/r/ExfXhjiH39uO5xZ5y+TlS/c=;
 b=sCetj0sIBlU3eOjnUx+HSNGEAl7R3p9rBRa9MzfMtYvMU3t48uHHnSdquvFyizVQcKkTfZYc
 9zn3ghzj7QtNEVo3SvdhE2hO9AAu0X+IWo6hPfE8/KkzLSW8TEgb55eRs7BnqDfF42pdZqjP
 Ilo87szhKUOorcjIV5umqoSi1ooHBnvqohmJjSD1aR71Gz5armvQtzkUJQ2LnsG7IGyuWUhF
 r0+gVZcCGfsnVRArDmyE9ywlRRWR0Hcf/2NpmgTfhRAPbqtYpA7T7QoWAnCeGdR8S27R8CKx
 As/uG0rzn4I0IaYQBEHfNmbtllSNmgFYpDPm+7jhlrS6NAJECwATlg==
X-Mailgun-Sending-Ip: 209.61.151.225
X-Mailgun-Sid: WyIyNzU5NCIsICJpYm0tYWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQiLCAiY2NkNWJkIl0=
Received: from ns1.allsupp.com
 (203-129-25-181.cb8119.syd.static.aussiebb.net [203.129.25.181]) by
 smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 5ef5acb5c4bb4f886d15a3e1 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 26 Jun 2020 08:07:17
 GMT
Received: from localhost (localhost [127.0.0.1])
 by ns1.allsupp.com (Postfix) with ESMTP id 1A6072B2A3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 26 Jun 2020 18:07:15 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ganomi.com; h=
 content-language:content-transfer-encoding:content-type
 :content-type:mime-version:user-agent:date:date:message-id
 :subject:subject:from:from; s=default; t=1593158834; x=
 1594973235; bh=7SABu05II2Ss0wTW6axHHsIW7wAtmootvtGMivQBK8o=; b=J
 icepjWTh4fxwC0/qVDbOzjXwXjm8IMyugtprxmVCzEyGkKt+N2PXyAn8qABMRW8B
 g6Rs7fgBK72UbP8ELnEhzmZZWfD+Ooic4tOxrtnwehOPwA8qQoIBLN+KQ0T/Fvbh
 KHH5wypoEulPmL6AGDS20t+pm/wRWu3BZXGLnMpRrA=
X-Virus-Scanned: Debian amavisd-new at ns1.allsupp.com
Received: from ns1.allsupp.com ([127.0.0.1])
 by localhost (ns1.allsupp.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 8jpUX_aPTTg7 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 26 Jun 2020 18:07:14 +1000 (AEST)
Received: from [192.168.3.23] (unknown [192.168.3.23])
 (Authenticated sender: j@ganomi.com)
 by ns1.allsupp.com (Postfix) with ESMTPSA id 553BE2B29D
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 26 Jun 2020 18:07:14 +1000 (AEST)
To: ibm-acpi-devel@lists.sourceforge.net
x-mailgun-native-send: true
From: Jiri Kanicky <j@ganomi.com>
Message-ID: <10bfb123-3ed5-4068-1180-ad5f9ae45a06@ganomi.com>
Date: Fri, 26 Jun 2020 18:07:14 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jojnO-00GBsG-OG
X-Mailman-Approved-At: Mon, 27 Jul 2020 01:43:54 +0000
Subject: [ibm-acpi-devel] thinkpad_acpi: unhandled HKEY event 0x6031
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi.

I received the following event with Thinkpad X1 Extreme Gen 2, hence 
reporting it as instructed.

Jun 26 18:02:27 superman kernel: thinkpad_acpi: unhandled HKEY event 0x6031
Jun 26 18:02:27 superman kernel: thinkpad_acpi: please report the 
conditions when this event happened to ibm-acpi-devel@lists.sourceforge.net

Distro: Debian Sid

Linux 5.7.0-1-amd64 #1 SMP Debian 5.7.6-1 (2020-06-24) x86_64 GNU/Linux

Thanks Jiri



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
