Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F35444F292
	for <lists+ibm-acpi-devel@lfdr.de>; Sat, 13 Nov 2021 11:43:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mlqUl-0003Au-9x; Sat, 13 Nov 2021 10:42:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1mlqUh-0003AG-B7
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 13 Nov 2021 10:42:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j+oU4CU9HHHDOXoH270ZcJ7Y0vN7/x8cYYcArqxqfzs=; b=Tb1QvpkIfY3f75fGuuNqdTPlO3
 vhOnvjGDLOXoAJJxv05JeHo/TbIWGim5w1I02BKg33m/KW394GY7vDtdpC7Mbrt3prE7PGsNacfcZ
 5Scx5KtNlP4nuTbfheHFYhrW0nAU2eqbAFJrFwmfItfREJVvmj7I8NgnoHixBtgOUouA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=j+oU4CU9HHHDOXoH270ZcJ7Y0vN7/x8cYYcArqxqfzs=; b=m
 KC+MAPe7dYM1crullHsEFLez5wSDYJhfruXLQSHTdXpcY4EoLG0u/v7e1mC9dD1PYCfokhMBgqNU7
 Od5gdabs7+3rmNVMCqvg7AAOGEI5yZBmMyPWdKKG0Pg1ptotCiyICd1UgXWUFtCMImExEESgkBW5A
 L0xZB3e5flfMZV7Q=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mlqUg-0008Gu-2I
 for ibm-acpi-devel@lists.sourceforge.net; Sat, 13 Nov 2021 10:42:48 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1636800156;
 bh=ESS4PJFNqBSyT0t32NT6SXPSUNZ2SzCvuI/arOjvzXc=;
 h=From:To:Cc:Subject:Date:From;
 b=I1vjxJi74M8nmx4Wjef1FJc7YpPhIWg9fUU8jsEXX8eNThPpQGcTIradsuTAlSo43
 XFCqVji9xUHQ8HR2QTGRv3LwYRDc+Rk7ErtnVZO9IJY2kwtkrL/g9efY7xi0l+Fu2v
 5qvX1Hf6zPSKdSbQSyipu82DsrU9hf6HMb3Cy7FU=
To: linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Sat, 13 Nov 2021 11:42:21 +0100
Message-Id: <20211113104225.141333-1-linux@weissschuh.net>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi,
 this series adds support for the charge_behaviour property
 to the power subsystem and thinkpad_acpi driver. As thinkpad_acpi has to
 use the 'struct power_supply' created by the generic ACPI driver it has to
 rely on custom sysfs attributes instead of proper power_supply properties
 to implement this property. 
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
X-Headers-End: 1mlqUg-0008Gu-2I
Subject: [ibm-acpi-devel] [PATCH 0/4] power: supply: add charge_behaviour
 property (force-discharge, inhibit-charge)
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

SGksCgp0aGlzIHNlcmllcyBhZGRzIHN1cHBvcnQgZm9yIHRoZSBjaGFyZ2VfYmVoYXZpb3VyIHBy
b3BlcnR5IHRvIHRoZSBwb3dlcgpzdWJzeXN0ZW0gYW5kIHRoaW5rcGFkX2FjcGkgZHJpdmVyLgoK
QXMgdGhpbmtwYWRfYWNwaSBoYXMgdG8gdXNlIHRoZSAnc3RydWN0IHBvd2VyX3N1cHBseScgY3Jl
YXRlZCBieSB0aGUgZ2VuZXJpYwpBQ1BJIGRyaXZlciBpdCBoYXMgdG8gcmVseSBvbiBjdXN0b20g
c3lzZnMgYXR0cmlidXRlcyBpbnN0ZWFkIG9mIHByb3Blcgpwb3dlcl9zdXBwbHkgcHJvcGVydGll
cyB0byBpbXBsZW1lbnQgdGhpcyBwcm9wZXJ0eS4KClBhdGNoIDE6IEFkZHMgdGhlIHBvd2VyX3N1
cHBseSBkb2N1bWVudGF0aW9uIGFuZCBiYXNpYyBwdWJsaWMgQVBJClBhdGNoIDI6IEFkZHMgaGVs
cGVycyB0byBwb3dlcl9zdXBwbHkgY29yZSB0byBoZWxwIGRyaXZlcnMgaW1wbGVtZW50IHRoZQog
IGNoYXJnZV9iZWhhdmlvdXIgYXR0cmlidXRlClBhdGNoIDM6IEFkZHMgc3VwcG9ydCBmb3IgZm9y
Y2UtZGlzY2hhcmdlIHRvIHRoaW5rcGFkX2FjcGkuClBhdGNoIDQ6IEFkZHMgc3VwcG9ydCBmb3Ig
aW5oaWJpdC1kaXNjaGFyZ2UgdG8gdGhpbmtwYWRfYWNwaS4KClBhdGNoIDMgYW5kIDQgYXJlIGxh
cmdlbHkgdGFrZW4gZnJvbSBvdGhlciBwYXRjaGVzIGFuZCBhZGFwdGVkIHRvIHRoZSBuZXcgQVBJ
LgooTGlua3MgYXJlIGluIHRoZSBwYXRjaCB0cmFpbGVyKQoKT2duamVuIEdhbGljLCBOaWNvbG8n
IFBpYXp6YWx1bmdhLCBUaG9tYXMgS29jaDoKCllvdXIgUy1vLWIgaXMgb24gdGhlIG9yaWdpbmFs
IGluaGliaXRfY2hhcmdlIGFuZCBmb3JjZV9kaXNjaGFyZ2UgcGF0Y2hlcy4KSSB3b3VsZCBsaWtl
IHRvIGFkZCB5b3UgYXMgQ28tZGV2ZWxvcGVkLWJ5IGJ1dCB0byBkbyB0aGF0IGl0IHdpbGwgYWxz
byByZXF1aXJlCnlvdXIgUy1vLWIuIENvdWxkIHlvdSBnaXZlIHlvdXIgc2lnbi1vZmZzIGZvciB0
aGUgbmV3IHBhdGNoZXMsIHNvIHlvdSBjYW4gYmUKcHJvcGVybHkgYXR0cmlidXRlZD8KClNlYmFz
dGlhbiBSZWljaGVsOgoKQ3VycmVudGx5IHRoZSBzZXJpZXMgZG9lcyBub3QgYWN0dWFsbHkgc3Vw
cG9ydCB0aGUgcHJvcGVydHkgYXMgYSBwcm9wZXIKcG93ZXJzdXBwbHkgcHJvcGVydHkgaGFuZGxl
ZCBmdWxseSBieSBwb3dlcl9zdXBwbHlfc3lzZnMuYyBiZWNhdXNlIHRoZXJlIHdvdWxkCmJlIG5v
IHVzZXIgZm9yIHRoaXMgcHJvcGVydHkuCgpQcmV2aW91cyBkaXNjdXNzaW9ucyBhYm91dCB0aGUg
QVBJOgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGxhdGZvcm0tZHJpdmVyLXg4Ni8yMDIxMTEw
ODE5Mjg1Mi4zNTc0NzMtMS1saW51eEB3ZWlzc3NjaHVoLm5ldC8KaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvcGxhdGZvcm0tZHJpdmVyLXg4Ni8yMTU2OWE4OS04MzAzLTg1NzMtMDVmYi1jMmZlYzI5
OTgzZDFAZ21haWwuY29tLwoKVGhvbWFzIFdlacOfc2NodWggKDQpOgogIHBvd2VyOiBzdXBwbHk6
IGFkZCBjaGFyZ2VfYmVoYXZpb3VyIGF0dHJpYnV0ZXMKICBwb3dlcjogc3VwcGx5OiBhZGQgaGVs
cGVycyBmb3IgY2hhcmdlX2JlaGF2aW91ciBzeXNmcwogIHBsYXRmb3JtL3g4NjogdGhpbmtwYWRf
YWNwaTogc3VwcG9ydCBmb3JjZS1kaXNjaGFyZ2UKICBwbGF0Zm9ybS94ODY6IHRoaW5rcGFkX2Fj
cGk6IHN1cHBvcnQgaW5oaWJpdC1jaGFyZ2UKCiBEb2N1bWVudGF0aW9uL0FCSS90ZXN0aW5nL3N5
c2ZzLWNsYXNzLXBvd2VyIHwgIDE0ICsrCiBkcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9h
Y3BpLmMgICAgICAgIHwgMTU0ICsrKysrKysrKysrKysrKysrKystCiBkcml2ZXJzL3Bvd2VyL3N1
cHBseS9wb3dlcl9zdXBwbHlfc3lzZnMuYyAgIHwgIDUxICsrKysrKysKIGluY2x1ZGUvbGludXgv
cG93ZXJfc3VwcGx5LmggICAgICAgICAgICAgICAgfCAgMTYgKysKIDQgZmlsZXMgY2hhbmdlZCwg
MjMxIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgoKYmFzZS1jb21taXQ6IDY2ZjRiZWFh
NmMxZDI4MTYxZjUzNDQ3MTQ4NGIyZGFhMmRlMWRjZTAKLS0gCjIuMzMuMQoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWls
aW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVsCg==
