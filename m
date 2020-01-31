Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0D514EE9C
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 31 Jan 2020 15:38:58 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ixXQp-0007Tt-CH; Fri, 31 Jan 2020 14:38:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@weissschuh.net>) id 1ixXQm-0007Tb-BE
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 31 Jan 2020 14:38:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LEPEoNRSaAGHUoIEPq36HieipA7fPuCOT+K2MDJ6u+0=; b=jBhTn6rfr9i9lm7n+5DMMkObvr
 IgExMiRyMHJtRI7ms4/sYYJA2z1Zt//HTkjhjvJlt3oPNRMr3ElztigHRRvPuMZCHQfdxcdYgT38j
 NR4TSBet3hmhbQVXi1g19W0UK1Zb8IpaBVnXKmPHcm7nSJongbeIjuVaxIx/PFFUHAx0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LEPEoNRSaAGHUoIEPq36HieipA7fPuCOT+K2MDJ6u+0=; b=V9MfZeNnndGkF3zqidMcTgH7sK
 lM+QfArq9vxlTnNt+VjgEVs4jXccbR2SoVjcVNX5WiO61UyOnBlKoMKZd5JBOCxjg1QxIgZS26leE
 MZU5pNseAlTMKHqUAhpfavRP8fay7zvYOCKTY4jNGFcXUCM9SBJsTOe2bYVDJE3vzHwY=;
Received: from ned.t-8ch.de ([212.47.237.191])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ixXQi-006KVJ-60
 for ibm-acpi-devel@lists.sourceforge.net; Fri, 31 Jan 2020 14:38:00 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1580481445;
 bh=bJgEuisyk6F4q2o0zelYg072No9f9ecc5qp9+z7E1BE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=elXDlvbmwTuyVCKpkm7gs+TriHixDjltXBmwm4BtaqQzq3FlMujws/e76qWG3+lVk
 wt5hrtp2qxkVCqA/Jzb3keBGQtaqd0lGcXCw28X+H7+Q+1lXY6RbarUgZqmeffg/DF
 LqPGwz7Fg+IQsOkyMe4nnEBj3VbKql86QaVgYvyk=
To: Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>
Date: Fri, 31 Jan 2020 15:36:47 +0100
Message-Id: <20200131143650.4149-1-linux@weissschuh.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200129204338.4055-1-linux@weissschuh.net>
References: 
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ixXQi-006KVJ-60
Subject: [ibm-acpi-devel] [PATCH v2 0/3] platform/x86: thinkpad_acpi: use
 standard charge control attribute names
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
Cc: ibm-acpi-devel@lists.sourceforge.net,
 =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

VGhpcyBwYXRjaCBzZXJpZXMgc3dpdGNoZXMgdGhlIGJhdHRlcnkgY29udHJvbCBzeXNmcyBhdHRy
aWJ1dGVzIHRvIHRoZWlyCnN0YW5kYXJkIG5hbWVzIGFzIGRvY3VtZW50ZWQgaW4gRG9jdW1lbnRh
dGlvbi9BQkkvdGVzdGluZy9zeXNmcy1jbGFzcy1wb3dlci4KCklmIGJhY2t3YXJkcyBjb21wYXRh
YmlsaXR5IGlzIG5vdCByZXF1aXJlZCBwbGVhc2UgZHJvcCBwYXRjaCAzIG9mIHRoaXMgc2VyaWVz
LgpUaGUgb2xkIG5hbWVzIHdlcmUgbm90IGRvY3VtZW50ZWQgZXhwbGljaXRseSBhbmQgbmV3IGdl
bmVyaWMgc29mdHdhcmUgc2hvdWxkCmF1dG9tYXRpY2FsbHkgdXNlIHRoZSBuZXcgYXR0cmlidXRl
cywgd2hpY2ggbWF5IGFsbG93IHRvIGRyb3AgdGhlIG9sZCBuYW1lcy4KCkNoYW5nZXMgc2luY2Ug
djE6CiAgKiBDb3JyZWN0ZWQgY2hhcmdlX2NvbnRyb2xfc3RvcF90aHJlc2hvbGQgdG8gY2hhcmdl
X2NvbnRyb2xfZW5kX3RocmVzaG9sZC4KClRob21hcyBXZWnDn3NjaHVoICgzKToKICBwbGF0Zm9y
bS94ODY6IHRoaW5rcGFkX2FjcGk6IHJlbW92ZSB1bnVzZWQgZGVmaW5lcwogIHBsYXRmb3JtL3g4
NjogdGhpbmtwYWRfYWNwaTogdXNlIHN0YW5kYXJkIGNoYXJnZSBjb250cm9sIGF0dHJpYnV0ZQog
ICAgbmFtZXMKICBwbGF0Zm9ybS94ODY6IHRoaW5rcGFkX2FjcGk6IHJlc3RvcmUgb2xkIGJhdHRl
cnkgY2hhcmdlIGF0dHJpYnV0ZXMKCiBkcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3Bp
LmMgfCAyOSArKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjAg
aW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCi0tIAoyLjI1LjAKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGlu
ZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
