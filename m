Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB5445B027
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Nov 2021 00:27:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mpfC8-0001u5-2M; Tue, 23 Nov 2021 23:27:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1mpfC4-0001ts-4o
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 23 Nov 2021 23:27:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=v4vbNg3EtvkC9cQMe6rgbfrbQh0PAxV1AgNKscXetkI=; b=UF4HMxoQIrm1HDJCN4V878O90X
 8HzKrVJSNIkyxPg6o9+bt2L5jFo3QimfBb3v9D3PEYWCT3uzYXFJUG0vpR9oJcS7AA2kMw5+Oj/HE
 1OgvC+MiMBjsarXUO6eT0cjav7hITAlPggtokWfDMRkWn2/r/SDTfRTuQZWoVF+Dpbto=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=v4vbNg3EtvkC9cQMe6rgbfrbQh0PAxV1AgNKscXetkI=; b=R
 jJ1EVjoMI0hTukFpkjL+8W1VLqZrH+s4jYdMQvRIxsPvbpFmIv4oI0ON1gdXAk0W0Ou6uaJMfpBma
 4MZVVuwjqSpqQu6jo7UyRMvYqzkEBhxf+eGV53MPFo3clGr0yDhQXIabmYqGmKt5OUYnghjlgLgUm
 XCD9Tb7XawoRwaGY=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mpfC1-0000Ud-Aq
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 23 Nov 2021 23:27:20 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1637710028;
 bh=DXEan1BVutJvaFtIQ8/QKBvVBNA5i6qL83xM1aiBSJ0=;
 h=From:To:Cc:Subject:Date:From;
 b=jEjFm9tfc6OX9MZ1mN0piWumgMyq4J1bCA6o7SiqRqVhbJPku5LCf0q9exz53x8EF
 syQN4MYVysCQhaTrw1Z2O0Zp/7q++FtyF8qlpeV6GnF507NesmK1jHbvNVc99qm+IR
 2AzpvorKO4STE/MEfOeP/8YhT1ETROIaUek/QU8g=
To: linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Nov 2021 00:27:00 +0100
Message-Id: <20211123232704.25394-1-linux@weissschuh.net>
X-Mailer: git-send-email 2.34.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1637710019; l=2660; s=20211113;
 h=from:subject; bh=DXEan1BVutJvaFtIQ8/QKBvVBNA5i6qL83xM1aiBSJ0=;
 b=0LmThycKxhwYcG1jpf56ePTNBUnZn6vWy+bqkDvUJ/sE06MDjs6fx5MzROh7AxXBWy/q+P7SbI9D
 cjSXZMRzAGE3vOpcHaZovI4GS2vtuOZNtbjQt4l34WYopNyXbXeK
X-Developer-Key: i=linux@weissschuh.net; a=ed25519;
 pk=9LP6KM4vD/8CwHW7nouRBhWLyQLcK1MkP6aTZbzUlj4=
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
X-Headers-End: 1mpfC1-0000Ud-Aq
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
LgooTGlua3MgYXJlIGluIHRoZSBwYXRjaCB0cmFpbGVyKQoKT2duamVuIEdhbGljOgoKWW91ciBT
LW8tYiBpcyBvbiB0aGUgb3JpZ2luYWwgaW5oaWJpdF9jaGFyZ2UgYW5kIGZvcmNlX2Rpc2NoYXJn
ZSBwYXRjaGVzLgpJIHdvdWxkIGxpa2UgdG8gYWRkIHlvdSBhcyBDby1kZXZlbG9wZWQtYnkgYnV0
IHRvIGRvIHRoYXQgaXQgd2lsbCBhbHNvIHJlcXVpcmUKeW91ciBTLW8tYi4gQ291bGQgeW91IGdp
dmUgeW91ciBzaWduLW9mZnMgZm9yIHRoZSBuZXcgcGF0Y2hlcywgc28geW91IGNhbiBiZQpwcm9w
ZXJseSBhdHRyaWJ1dGVkPwoKU2ViYXN0aWFuIFJlaWNoZWw6CgpDdXJyZW50bHkgdGhlIHNlcmll
cyBkb2VzIG5vdCBhY3R1YWxseSBzdXBwb3J0IHRoZSBwcm9wZXJ0eSBhcyBhIHByb3Blcgpwb3dl
cnN1cHBseSBwcm9wZXJ0eSBoYW5kbGVkIGZ1bGx5IGJ5IHBvd2VyX3N1cHBseV9zeXNmcy5jIGJl
Y2F1c2UgdGhlcmUgd291bGQKYmUgbm8gdXNlciBmb3IgdGhpcyBwcm9wZXJ0eS4KClByZXZpb3Vz
IGRpc2N1c3Npb25zIGFib3V0IHRoZSBBUEk6CgpodHRwczovL2xvcmUua2VybmVsLm9yZy9wbGF0
Zm9ybS1kcml2ZXIteDg2LzIwMjExMTA4MTkyODUyLjM1NzQ3My0xLWxpbnV4QHdlaXNzc2NodWgu
bmV0LwpodHRwczovL2xvcmUua2VybmVsLm9yZy9wbGF0Zm9ybS1kcml2ZXIteDg2LzIxNTY5YTg5
LTgzMDMtODU3My0wNWZiLWMyZmVjMjk5ODNkMUBnbWFpbC5jb20vCgp2MTogaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvbGttbC8yMDIxMTExMzEwNDIyNS4xNDEzMzMtMS1saW51eEB3ZWlzc3NjaHVo
Lm5ldC8KdjEgLT4gdjI6CgoqIFVzZSBzeXNmc19lbWl0LUFQSXMgaW5zdGVhZCBvZiBwbGFpbiBz
cHJpbnRmCiogTW9yZSBjZWNrcyBmb3IgYWN0dWFsIGZlYXR1cmUgYXZhaWxhYmlsaXR5CiogVmFs
aWRhdGlvbiBvZiB0aGUgd3JpdHRlbiB2YWx1ZXMKKiBSZWFkIGluaGliaXQtY2hhcmdlIHZpYSBC
SUNHIGluc3RlYWQgb2YgUFNTRyAocGVhayBzaGlmdCBzdGF0ZSkKKiBEb24ndCBtYW5nbGUgZXJy
b3IgbnVtYmVycyBpbiBjaGFyZ2VfYmVoYXZpb3VyX3N0b3JlKCkKCk9wZW4gcG9pbnRzOgoKVGhv
bWFzIEtvY2ggaGFzIG9ic2VydmVkIHRoYXQgb24gYSBUNDUwcyB3aXRoIHR3byBiYXR0ZXJpZXMK
aW5oaWJpdC1jaGFyZ2Ugb24gQkFUMCB3aWxsIGFmZmVjdCBib3RoIGJhdHRlcmllcyBhbmQgZm9y
IEJBVDEgaXQgaXMgaWdub3JlZAplbnRpcmVseSwgdGhpcyBzZWVtcyB0byBiZSBhIGJ1ZyBpbiB0
aGUgRUMuCk9uIG15IFQ0NjBzIHdpdGggdHdvIGJhdHRlcmllcyBpdCB3b3JrcyBjb3JyZWN0bHku
CgpUaG9tYXMgV2Vpw59zY2h1aCAoNCk6CiAgcG93ZXI6IHN1cHBseTogYWRkIGNoYXJnZV9iZWhh
dmlvdXIgYXR0cmlidXRlcwogIHBvd2VyOiBzdXBwbHk6IGFkZCBoZWxwZXJzIGZvciBjaGFyZ2Vf
YmVoYXZpb3VyIHN5c2ZzCiAgcGxhdGZvcm0veDg2OiB0aGlua3BhZF9hY3BpOiBzdXBwb3J0IGZv
cmNlLWRpc2NoYXJnZQogIHBsYXRmb3JtL3g4NjogdGhpbmtwYWRfYWNwaTogc3VwcG9ydCBpbmhp
Yml0LWNoYXJnZQoKIERvY3VtZW50YXRpb24vQUJJL3Rlc3Rpbmcvc3lzZnMtY2xhc3MtcG93ZXIg
fCAgMTQgKysKIGRyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYyAgICAgICAgfCAx
OTEgKysrKysrKysrKysrKysrKysrKy0KIGRyaXZlcnMvcG93ZXIvc3VwcGx5L3Bvd2VyX3N1cHBs
eV9zeXNmcy5jICAgfCAgNTEgKysrKysrCiBpbmNsdWRlL2xpbnV4L3Bvd2VyX3N1cHBseS5oICAg
ICAgICAgICAgICAgIHwgIDE2ICsrCiA0IGZpbGVzIGNoYW5nZWQsIDI2OCBpbnNlcnRpb25zKCsp
LCA0IGRlbGV0aW9ucygtKQoKCmJhc2UtY29tbWl0OiA2NmY0YmVhYTZjMWQyODE2MWY1MzQ0NzE0
ODRiMmRhYTJkZTFkY2UwCi0tIAoyLjM0LjAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3Bp
LWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5l
dC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
