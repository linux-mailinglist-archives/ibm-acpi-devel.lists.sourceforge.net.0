Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB41614D23D
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 29 Jan 2020 22:01:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1iwuSp-0001yJ-Oq; Wed, 29 Jan 2020 21:01:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@weissschuh.net>) id 1iwuSo-0001yB-HH
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 29 Jan 2020 21:01:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eKOT+v+H4xhHvXnLVhYe+grxw8RS0BU5vXBCDwvAo3c=; b=TI1n+d9bdiAbVJdRZ0JcxGTud9
 Uz57FJ//u0nNQ8JnFs/ZaCh6oJX0OQmp1NGpirAtylY8lTHdXvvm18pscW3v+yU2MNlGc6MH+rVe8
 hCXyCoz069gL+HFkFshu+iXMYpbD9NsaM4ViFqjdPUOOL9vKU/oVUYjOczxSfvTuqMJI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=eKOT+v+H4xhHvXnLVhYe+grxw8RS0BU5vXBCDwvAo3c=; b=A
 TUt7YH3BYyH5pelgU7peSVOpQrwkyDTp0iSoLRNa/AU+YM2A9id78LTpHqWbtzL80W9RBDLWZ0nTP
 0Myk7gzY/k1wa08rotl5nOHOk26SXddVdaDDezeQO2kyJ45ZirlvSN1S+Sy3squpqkLdDNcdhRN5G
 wbkrgnzhAlzdTLOY=;
Received: from [212.47.237.191] (helo=ned.t-8ch.de)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iwuSn-009nhv-1M
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 29 Jan 2020 21:01:30 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1580330625;
 bh=NKUmMyQPNMW9j4FgzjMYHkAPpVi0GsN0og9K81e2G90=;
 h=From:To:Cc:Subject:Date:From;
 b=J2ASqw0ExW8TjRkwaPHTq1UXNlQHF04mTpvQe4Ac5u720QAxiyIM6i7LkPRjfebcb
 TOjyIVcMgBnZiNIIh6t6pX+HouH/1MmsMkvHA67f15jr7WFp9SvkRBk8z/Y1On1KAY
 Y06i0dLP+2ZPjMaI5NUPdSGTTDDKaipIh42bcLwo=
To: Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 Darren Hart <dvhart@infradead.org>, Andy Shevchenko <andy@infradead.org>
Date: Wed, 29 Jan 2020 21:43:35 +0100
Message-Id: <20200129204338.4055-1-linux@weissschuh.net>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iwuSn-009nhv-1M
Subject: [ibm-acpi-devel] [PATCH 0/3] platform/x86: thinkpad_acpi: use
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

VGhpcyBwYXRjaCBzZXJpZXMgc3dpdGNoZXMgb3ZlciB0aGUgYmF0dGVyeSBjb250cm9sIHN5c2Zz
IGF0dHJpYnV0ZXMgdG8gdGhlaXIKc3RhbmRhcmQgbmFtZXMgYXMgZG9jdW1lbnRlZCBpbiBEb2N1
bWVudGF0aW9uL0FCSS90ZXN0aW5nL3N5c2ZzLWNsYXNzLXBvd2VyLgoKSWYgYmFja3dhcmRzIGNv
bXBhdGFiaWxpdHkgaXMgbm90IHJlcXVpcmVkIHBsZWFzZSBkcm9wIHBhdGNoIDMgb2YgdGhpcyBz
ZXJpZXMuClRoZSBvbGQgbmFtZXMgd2VyZSBub3QgZG9jdW1lbnRlZCBleHBsaWNpdGx5IGFuZCBu
ZXcgZ2VuZXJpYyBzb2Z0d2FyZSBzaG91bGQKYXV0b21hdGljYWxseSB1c2UgdGhlIG5ldyBhdHRy
aWJ1dGVzLCB3aGljaCBtYXkgYWxsb3cgdXMgdG8gZHJvcCB0aGUgb2xkIG5hbWVzLgoKVGhvbWFz
IFdlacOfc2NodWggKDMpOgogIHBsYXRmb3JtL3g4NjogdGhpbmtwYWRfYWNwaTogcmVtb3ZlIHVu
dXNlZCBkZWZpbmVzCiAgcGxhdGZvcm0veDg2OiB0aGlua3BhZF9hY3BpOiB1c2Ugc3RhbmRhcmQg
Y2hhcmdlIGNvbnRyb2wgYXR0cmlidXRlCiAgICBuYW1lcwogIHBsYXRmb3JtL3g4NjogdGhpbmtw
YWRfYWNwaTogcmVzdG9yZSBvbGQgYmF0dGVyeSBjaGFyZ2UgYXR0cmlidXRlcwoKIGRyaXZlcnMv
cGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYyB8IDI5ICsrKysrKysrKysrKysrKysrKystLS0t
LS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoK
LS0gCjIuMjUuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L2libS1hY3BpLWRldmVsCg==
