Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A30145B028
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Nov 2021 00:28:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mpfC8-0001u9-Hs; Tue, 23 Nov 2021 23:27:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1mpfC4-0001tt-5A
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 23 Nov 2021 23:27:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cjv264JkZIVMPMMeDG8sgFCLiVltv5gh/pT/xFrIwvE=; b=fsP/kLIB9NgN35om/tgVRov1Es
 xOvEaiwiCH7zYqAiEZrxbw6nrpcBRel9BNJ/bJJMt1jpDOLFivtkyAjhHNfVdMaJ6dNrptYqv1xta
 QqWY9dWSPo9zSVXpcJS8r2yhlJbaCxpYw6OCL+rPMhoQ62ulBYOvfCgK2ntkp0uvX0Dg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cjv264JkZIVMPMMeDG8sgFCLiVltv5gh/pT/xFrIwvE=; b=OH4SAWj1+cCFGKZWenzCH9F3JT
 K4jW63Vzqz+W8XX+rCbzJ2IN259xzWaUitczOca3CZ+51xhTCBWthOEYdxG0CFkR4rRxYURfZq3qW
 RRPqu9ED1YuyTKxr+NpWwNmi9MxqvCOoirxAc45FeaAxRCIJnkDdF8uPlRoQAUDau5Ak=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mpfC2-006jP9-3H
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 23 Nov 2021 23:27:20 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1637710028;
 bh=SZYLz9pODZYhp1MPf438WzgYeqxIh6cyZNNo+eLNyiI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hWN8rkyGx/czcemUfLKEY/DftrxEJYrMHZqBUsVqt91Ak4lgZ6b33Dg99Va0FwvId
 5anYDVmzroeWtQeN8C2gkXn3faA6P8N7JWnykqxOc5n33wifVz0d+ujVTiv9LEV2XP
 PUZWr7qcm8ZAOk59SUxd0d+d7rrjQLfMYU4WSovM=
To: linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Nov 2021 00:27:01 +0100
Message-Id: <20211123232704.25394-2-linux@weissschuh.net>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211123232704.25394-1-linux@weissschuh.net>
References: <20211123232704.25394-1-linux@weissschuh.net>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1637710019; l=2492; s=20211113;
 h=from:subject; bh=SZYLz9pODZYhp1MPf438WzgYeqxIh6cyZNNo+eLNyiI=;
 b=wEL2amfTqT1FYd22a4d7WEiSv3LHb/lYYaZ7ZkQQhWQcBIuUWr92Dru0OR29hjho/e3lJMWFXUQR
 p6TSb02cDo2UtQok+PIrNP2zesS2ITVHAJU1u3lqwBsslWPDjf8O
X-Developer-Key: i=linux@weissschuh.net; a=ed25519;
 pk=9LP6KM4vD/8CwHW7nouRBhWLyQLcK1MkP6aTZbzUlj4=
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
X-Headers-End: 1mpfC2-006jP9-3H
Subject: [ibm-acpi-devel] [PATCH v2 1/4] power: supply: add charge_behaviour
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
VF9QUk9QX0NIQU5HRUQsCiB9OwotLSAKMi4zNC4wCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0t
YWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
