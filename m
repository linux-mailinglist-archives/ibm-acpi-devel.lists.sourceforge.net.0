Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D30A5A7B8B
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 31 Aug 2022 12:43:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1oTLBL-0007TE-Vg;
	Wed, 31 Aug 2022 10:42:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <daedalus@pingtimeout.net>) id 1oTLBK-0007Sg-6T
 for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 31 Aug 2022 10:42:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Message-ID:
 Subject:To:From:Date:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H4ZdifuuXbR8d51EenrgggcK4w6qL2jSnxYgOGz55GY=; b=HX4UjK8Y5OCAuM5Pt+E/x8Lqus
 m1LvNaoAVkpUjeFyzAiMZW1AYvjmQSr/70L1moBPy5ibHANJURxuuhmCmaPpZusDwZ9gXEGqqVFl+
 zm4OzwDvvmXbKzqUxqTlKadEoB7mYr5u4KySm8crPpSYNCpYTaN8bhO4rIgTcod0llLw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Message-ID:Subject:To:From:Date:
 MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=H4ZdifuuXbR8d51EenrgggcK4w6qL2jSnxYgOGz55GY=; b=B
 Kq2HK773adKO3g+4M90DkhJK3eHJlcyxui0sS+TSVVerweAEsMxnSjagxCpzEbOBAf6Y49vl4ktBD
 aKjCA39otuVkb9XsPx7TAeA4vla9XbWgvYsyEdUmCuKJuAluzYgP0eoOMn8+/VXf+dFMLd2WOjg3L
 ymHszgfQvnOIEvPE=;
Received: from mx1.pingtimeout.net ([95.217.66.211])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oTLBH-0004v1-4K for ibm-acpi-devel@lists.sourceforge.net;
 Wed, 31 Aug 2022 10:42:49 +0000
Received: from webmail.pingtimeout.net (nilia.pingtimeout.net [95.217.66.209])
 by mx1.pingtimeout.net (Postfix) with ESMTPSA id 71C52180008B
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Wed, 31 Aug 2022 13:42:40 +0300 (EEST)
MIME-Version: 1.0
Date: Wed, 31 Aug 2022 13:42:40 +0300
From: daedalus@pingtimeout.net
To: ibm-acpi-devel@lists.sourceforge.net
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <8ec1f881d2c043e8b9459694145ecfc8@pingtimeout.net>
X-Sender: daedalus@pingtimeout.net
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, On the new ThinkPad Z13 I get this when I double tap
 the trackpoint button on Linux: [91145.365069] thinkpad_acpi: unhandled HKEY
 event 0x8036 [91145.365078] thinkpad_acpi: please report the conditions when
 this event happened to ibm-acpi-devel@lists.sourceforge.net 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1oTLBH-0004v1-4K
Subject: [ibm-acpi-devel] Unhandled HKEY event 0x8036
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

Hello,

On the new ThinkPad Z13 I get this when I double tap the trackpoint 
button on Linux:

[91145.365069] thinkpad_acpi: unhandled HKEY event 0x8036
[91145.365078] thinkpad_acpi: please report the conditions when this 
event happened to ibm-acpi-devel@lists.sourceforge.net


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
