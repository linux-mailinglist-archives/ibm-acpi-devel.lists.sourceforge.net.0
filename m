Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 101F644F28E
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 13 Nov 2021 11:43:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mlqUl-0003fX-5t; Sat, 13 Nov 2021 10:42:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1mlqUi-0003fI-Fb
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 13 Nov 2021 10:42:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hVI8xBLuT/dCHSTpkzexLowzwrblA8y1iyPSIi/OM+I=; b=iTk4rqy5DTSjljMH4KN5BiCzaR
 6MPBFEpMP5mE8shEpqPoHFIWW4vCJLS67Y3du2xL8RSCOFrpYsYtQxg7DKBOcajoMDzSRKkLCcUig
 YptZpE1x+4hUCX5iWJ74NBYGSMAGRB6kBxdHH7ptVgxl3dfbXRfBO3ozFFWw2bMwF/nI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hVI8xBLuT/dCHSTpkzexLowzwrblA8y1iyPSIi/OM+I=; b=FOsISkB2KYmAWEc2IzwGp7/yKA
 HwlLtvhvPVxGzoPttqgc6bgjqO2AzbKvZ4oYx9r0CzSqqwD8BLq+5cFuUB7ZePMrWHii8lMOkD638
 aopa7hl/gDZfYJsp1idyavMWFlVqlJ0ZvUepsCANtZc2ohMmi6gEfxiArLHX4UbvDjZQ=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mlqUg-0008Gx-2H
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 13 Nov 2021 10:42:48 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1636800156;
 bh=QxJBOoxYey+j4x0YV6CgxD72MhZoalFtY91GcglpMkM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=senmAwS+5Prs+xkmfqgK4DzCHV/0/Wy1mE+ytdQMgJjrcqgDkWTPYeR0haIOTVXHC
 UruuOEfepHFSJ6Do9OeiMqjA06Bmu3M7KEFJuWfohZc4ehKJHm0mZNeXlTN7ZX5YkC
 rOO+bYVQKbUPwYN0DmRUr2HS3mmq6Ou5Dh75O7u4=
To: linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Sat, 13 Nov 2021 11:42:22 +0100
Message-Id: <20211113104225.141333-2-linux@weissschuh.net>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211113104225.141333-1-linux@weissschuh.net>
References: <20211113104225.141333-1-linux@weissschuh.net>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This a revised version of "[RFC] add standardized attributes
 for force_discharge and inhibit_charge" [0], incorporating discussion results.
 The biggest change is the switch from two boolean attributes to a single
 enum attribute. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mlqUg-0008Gx-2H
Subject: [ibm-acpi-devel] [PATCH 1/4] power: supply: add charge_behaviour
 attributes
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
Cc: linrunner@gmx.net, nicolopiazzalunga@gmail.com, bberg@redhat.com,
 =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 linux-kernel@vger.kernel.org, hadess@hadess.net, markpearson@lenovo.com,
 smclt30p@gmail.com, njoshi1@lenovo.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

VGhpcyBhIHJldmlzZWQgdmVyc2lvbiBvZgoiW1JGQ10gYWRkIHN0YW5kYXJkaXplZCBhdHRyaWJ1
dGVzIGZvciBmb3JjZV9kaXNjaGFyZ2UgYW5kIGluaGliaXRfY2hhcmdlIiBbMF0sCmluY29ycG9y
YXRpbmcgZGlzY3Vzc2lvbiByZXN1bHRzLgoKVGhlIGJpZ2dlc3QgY2hhbmdlIGlzIHRoZSBzd2l0
Y2ggZnJvbSB0d28gYm9vbGVhbiBhdHRyaWJ1dGVzIHRvIGEgc2luZ2xlCmVudW0gYXR0cmlidXRl
LgoKWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BsYXRmb3JtLWRyaXZlci14ODYvMjE1Njlh
ODktODMwMy04NTczLTA1ZmItYzJmZWMyOTk4M2QxQGdtYWlsLmNvbS8KClNpZ25lZC1vZmYtYnk6
IFRob21hcyBXZWnDn3NjaHVoIDxsaW51eEB3ZWlzc3NjaHVoLm5ldD4KLS0tCiBEb2N1bWVudGF0
aW9uL0FCSS90ZXN0aW5nL3N5c2ZzLWNsYXNzLXBvd2VyIHwgMTQgKysrKysrKysrKysrKysKIGlu
Y2x1ZGUvbGludXgvcG93ZXJfc3VwcGx5LmggICAgICAgICAgICAgICAgfCAgNyArKysrKysrCiAy
IGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL0FCSS90ZXN0aW5nL3N5c2ZzLWNsYXNzLXBvd2VyIGIvRG9jdW1lbnRhdGlvbi9BQkkvdGVz
dGluZy9zeXNmcy1jbGFzcy1wb3dlcgppbmRleCBmNzkwNGVmYzRjZmEuLmNlY2UwOTQ3NjRmOCAx
MDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9BQkkvdGVzdGluZy9zeXNmcy1jbGFzcy1wb3dlcgor
KysgYi9Eb2N1bWVudGF0aW9uL0FCSS90ZXN0aW5nL3N5c2ZzLWNsYXNzLXBvd2VyCkBAIC00NTUs
NiArNDU1LDIwIEBAIERlc2NyaXB0aW9uOgogCQkJICAgICAgIlVua25vd24iLCAiQ2hhcmdpbmci
LCAiRGlzY2hhcmdpbmciLAogCQkJICAgICAgIk5vdCBjaGFyZ2luZyIsICJGdWxsIgogCitXaGF0
OgkJL3N5cy9jbGFzcy9wb3dlcl9zdXBwbHkvPHN1cHBseV9uYW1lPi9jaGFyZ2VfYmVoYXZpb3Vy
CitEYXRlOgkJTm92ZW1iZXIgMjAyMQorQ29udGFjdDoJbGludXgtcG1Admdlci5rZXJuZWwub3Jn
CitEZXNjcmlwdGlvbjoKKwkJUmVwcmVzZW50cyB0aGUgY2hhcmdpbmcgYmVoYXZpb3VyLgorCisJ
CUFjY2VzczogUmVhZCwgV3JpdGUKKworCQlWYWxpZCB2YWx1ZXM6CisJCQk9PT09PT09PT09PT09
PT09ID09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQorCQkJYXV0bzogICAgICAg
ICAgICBDaGFyZ2Ugbm9ybWFsbHksIHJlc3BlY3QgdGhyZXNob2xkcworCQkJaW5oaWJpdC1jaGFy
Z2U6ICBEbyBub3QgY2hhcmdlIHdoaWxlIEFDIGlzIGF0dGFjaGVkCisJCQlmb3JjZS1kaXNjaGFy
Z2U6IEZvcmNlIGRpc2NoYXJnZSB3aGlsZSBBQyBpcyBhdHRhY2hlZAorCiBXaGF0OgkJL3N5cy9j
bGFzcy9wb3dlcl9zdXBwbHkvPHN1cHBseV9uYW1lPi90ZWNobm9sb2d5CiBEYXRlOgkJTWF5IDIw
MDcKIENvbnRhY3Q6CWxpbnV4LXBtQHZnZXIua2VybmVsLm9yZwpkaWZmIC0tZ2l0IGEvaW5jbHVk
ZS9saW51eC9wb3dlcl9zdXBwbHkuaCBiL2luY2x1ZGUvbGludXgvcG93ZXJfc3VwcGx5LmgKaW5k
ZXggOWNhMWYxMjBhMjExLi43MGMzMzNlODYyOTMgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgv
cG93ZXJfc3VwcGx5LmgKKysrIGIvaW5jbHVkZS9saW51eC9wb3dlcl9zdXBwbHkuaApAQCAtMTMy
LDYgKzEzMiw3IEBAIGVudW0gcG93ZXJfc3VwcGx5X3Byb3BlcnR5IHsKIAlQT1dFUl9TVVBQTFlf
UFJPUF9DSEFSR0VfQ09OVFJPTF9MSU1JVF9NQVgsCiAJUE9XRVJfU1VQUExZX1BST1BfQ0hBUkdF
X0NPTlRST0xfU1RBUlRfVEhSRVNIT0xELCAvKiBpbiBwZXJjZW50cyEgKi8KIAlQT1dFUl9TVVBQ
TFlfUFJPUF9DSEFSR0VfQ09OVFJPTF9FTkRfVEhSRVNIT0xELCAvKiBpbiBwZXJjZW50cyEgKi8K
KwlQT1dFUl9TVVBQTFlfUFJPUF9DSEFSR0VfQkVIQVZJT1VSLAogCVBPV0VSX1NVUFBMWV9QUk9Q
X0lOUFVUX0NVUlJFTlRfTElNSVQsCiAJUE9XRVJfU1VQUExZX1BST1BfSU5QVVRfVk9MVEFHRV9M
SU1JVCwKIAlQT1dFUl9TVVBQTFlfUFJPUF9JTlBVVF9QT1dFUl9MSU1JVCwKQEAgLTIwMiw2ICsy
MDMsMTIgQEAgZW51bSBwb3dlcl9zdXBwbHlfdXNiX3R5cGUgewogCVBPV0VSX1NVUFBMWV9VU0Jf
VFlQRV9BUFBMRV9CUklDS19JRCwJLyogQXBwbGUgQ2hhcmdpbmcgTWV0aG9kICovCiB9OwogCitl
bnVtIHBvd2VyX3N1cHBseV9jaGFyZ2VfYmVoYXZpb3VyIHsKKwlQT1dFUl9TVVBQTFlfQ0hBUkdF
X0JFSEFWSU9VUl9BVVRPID0gMCwKKwlQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9JTkhJ
QklUX0NIQVJHRSwKKwlQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9GT1JDRV9ESVNDSEFS
R0UsCit9OworCiBlbnVtIHBvd2VyX3N1cHBseV9ub3RpZmllcl9ldmVudHMgewogCVBTWV9FVkVO
VF9QUk9QX0NIQU5HRUQsCiB9OwotLSAKMi4zMy4xCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0t
YWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
