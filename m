Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F131505C7
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  3 Feb 2020 13:02:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1iyaQg-0006CU-7j; Mon, 03 Feb 2020 12:02:14 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@weissschuh.net>) id 1iyaQe-0006CM-Qy
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 03 Feb 2020 12:02:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5E2Uzhd6fq/aoFVXHVKDOY6XQDl+jAVcFBRq90nasUo=; b=j1pd8ag3PBdOgz+a3eL4FH+mnd
 221u8KUuEwdLwScxhDGjp2q6f4Uq7hfspUcV/6+7/9RIq0gkxk8Rz7gC+jUdHOE+QFZwzqYplPp35
 5mTVEeeGK9vT4ovM6WE/J97JkOqVhkqwjaFtQVa6bHE/zbrUGjZSkKJfRrMqXvfVoh6s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5E2Uzhd6fq/aoFVXHVKDOY6XQDl+jAVcFBRq90nasUo=; b=fBAfDeiCZOroFR5v1mP/B2Hert
 hRroi8XOJ6TngJmLbWYhyD9EhOt7vI9gXCvLy95rDSQGQn8L4yNIpjz+HLUn6UgztI41g7aq9HiBJ
 N66bXklQ0X62kE1468cpkhxsEFfkb7uee06DLKtPKR37MO0mOOHfVmEZmZDRi4vXpNKM=;
Received: from ned.t-8ch.de ([212.47.237.191])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iyaQa-0090OJ-O6
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 03 Feb 2020 12:02:12 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1580731317;
 bh=SqxYLCmdR4Abw8l8bjcJ27sDp3wH9PE1sOB/bNJIyHc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=TpOWY9pbayjtU3P//dUddgW7R+q2LWsyNeGUcJHQGdyYqANEe9202+TD2SxkZ97A8
 55twlHQtoyWNaSF3tGegOC1ks20nZjU9T11cl4WTzalArIEFK7CZngBj3VBv992pxm
 cKrpoBGrjqRMxAoP/gr3rwFlYMHloJXBgNfQugYc=
To: Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>
Date: Mon,  3 Feb 2020 13:01:30 +0100
Message-Id: <20200203120132.102576-1-linux@weissschuh.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131143650.4149-1-linux@weissschuh.net>
References: <20200131143650.4149-1-linux@weissschuh.net>
MIME-Version: 1.0
X-Spam-Score: -0.0 (/)
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
X-Headers-End: 1iyaQa-0090OJ-O6
Subject: [ibm-acpi-devel] [PATCH v3 0/2] platform/x86: thinkpad_acpi: use
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
djI6CiogUHJlc2VydmVkIEFQSSBiYWNrd2FyZHMgY29tcGF0IGFmdGVyIGVhY2ggcGF0Y2ggYnkg
bWVyZ2luZyB0aGUgcGF0Y2hlcyB0aGF0CiAgc3dpdGNoIG92ZXIgdG8gdGhlIG5ldyBBUEkgYW5k
IHJlaW50cm9kdWNlIHRoZSBjb21wYXQgYWxpYXNlcy4KClRob21hcyBXZWnDn3NjaHVoICgyKToK
ICBwbGF0Zm9ybS94ODY6IHRoaW5rcGFkX2FjcGk6IHJlbW92ZSB1bnVzZWQgZGVmaW5lcwogIHBs
YXRmb3JtL3g4NjogdGhpbmtwYWRfYWNwaTogdXNlIHN0YW5kYXJkIGNoYXJnZSBjb250cm9sIGF0
dHJpYnV0ZQogICAgbmFtZXMKCiBkcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMg
fCAyOSArKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjAgaW5z
ZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCi0tIAoyLjI1LjAKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBs
aXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
