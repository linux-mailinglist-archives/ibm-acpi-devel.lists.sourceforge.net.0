Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC4045B029
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 24 Nov 2021 00:28:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mpfC5-0006um-Pz; Tue, 23 Nov 2021 23:27:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@weissschuh.net>) id 1mpfC3-0006uc-5q
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 23 Nov 2021 23:27:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=he4pDhCHb3wVGz3e5PSZVHx2DMcwbETp5OE6pfqYjCg=; b=TQamIO7+FfmlLHcYuFQ9hnvSu3
 geRrtqlmza3hYax1flwOOGRTPCkFrozOmQmbdIFss3p3/rjZVbtbaDJ4axk8z/9VC2JxIRhF2fif7
 PPMgB+ptwSjcQfadVGopi3V49V9w2V2qqFXEJV1GA1UcUrNTjIVioc5ECX4Z2q3ePfvo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=he4pDhCHb3wVGz3e5PSZVHx2DMcwbETp5OE6pfqYjCg=; b=akW5qkJot29NEnOgA3juvN61Ae
 5q6usOdwe2VjjMjJIcERbu4Z1CCJEMmJe9gy7hyMzpyEr6LlKUMTkZCiHO+H9CePLZrQSoOVZ7MVZ
 Dm+OO/7LREMa6ym0nUIUF/9Q+fFbNvKFdyx1FTG0X50mMZ9fPoNHDWpRlXY2nQ02sABc=;
Received: from todd.t-8ch.de ([159.69.126.157])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mpfC2-006jPC-3T
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 23 Nov 2021 23:27:20 +0000
From: =?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <linux@weissschuh.net>
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=weissschuh.net;
 s=mail; t=1637710029;
 bh=qU9W2kmHIbsmZrsfsVtyjLYvoHKferUQSNYZI6CIAs4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uQQfHok7cpILqH8Ek2abRVvBX9IuxjCTbszBlViHa9ibngmrD1hm0cnIkG+PgaLbx
 BktxrK0jsBJc3CCzpye3UQUJ7sjNMqK2bhVp9+8gwezeY/4RxIxIXpUOktorljvK/g
 mKZb1hL4LEViC75sEj2o8nq9co9tDXdfnm8a32W0=
To: linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Date: Wed, 24 Nov 2021 00:27:04 +0100
Message-Id: <20211123232704.25394-5-linux@weissschuh.net>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211123232704.25394-1-linux@weissschuh.net>
References: <20211123232704.25394-1-linux@weissschuh.net>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1637710019; l=5442; s=20211113;
 h=from:subject; bh=qU9W2kmHIbsmZrsfsVtyjLYvoHKferUQSNYZI6CIAs4=;
 b=ksoSvuT62RgYUS1iFKYKmvHRymOwZNCvPjLR9hfbyGS2g0nIP1vRZzThFutfXDQyTMXSTP125f6P
 /Z9LcK5TB9W77YtfUFazqgccF6hkT5AoaP4if7su7J+B47lSAf4j
X-Developer-Key: i=linux@weissschuh.net; a=ed25519;
 pk=9LP6KM4vD/8CwHW7nouRBhWLyQLcK1MkP6aTZbzUlj4=
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  This adds support for the inhibit-charge charge_behaviour
   through the embedded controller of ThinkPads. Co-developed-by: Thomas Koch
    <linrunner@gmx.net> Signed-off-by: Thomas Koch <linrunner@gmx.net> Co-developed-by:
    Nicolò Piazzalunga <nicolopiazzalunga@gmail.com> Signed-off-by: Nicolò
   Piazzalunga <n [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
X-Headers-End: 1mpfC2-006jPC-3T
Subject: [ibm-acpi-devel] [PATCH v2 4/4] platform/x86: thinkpad_acpi:
 support inhibit-charge
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

VGhpcyBhZGRzIHN1cHBvcnQgZm9yIHRoZSBpbmhpYml0LWNoYXJnZSBjaGFyZ2VfYmVoYXZpb3Vy
IHRocm91Z2ggdGhlCmVtYmVkZGVkIGNvbnRyb2xsZXIgb2YgVGhpbmtQYWRzLgoKQ28tZGV2ZWxv
cGVkLWJ5OiBUaG9tYXMgS29jaCA8bGlucnVubmVyQGdteC5uZXQ+ClNpZ25lZC1vZmYtYnk6IFRo
b21hcyBLb2NoIDxsaW5ydW5uZXJAZ214Lm5ldD4KQ28tZGV2ZWxvcGVkLWJ5OiBOaWNvbMOyIFBp
YXp6YWx1bmdhIDxuaWNvbG9waWF6emFsdW5nYUBnbWFpbC5jb20+ClNpZ25lZC1vZmYtYnk6IE5p
Y29sw7IgUGlhenphbHVuZ2EgPG5pY29sb3BpYXp6YWx1bmdhQGdtYWlsLmNvbT4KU2lnbmVkLW9m
Zi1ieTogVGhvbWFzIFdlacOfc2NodWggPGxpbnV4QHdlaXNzc2NodWgubmV0PgoKLS0tCgpUaGlz
IHBhdGNoIGlzIGJhc2VkIG9uIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3BsYXRmb3JtLWRyaXZl
ci14ODYvZDI4MDg5MzAtNTg0MC02ZmZiLTNhNTktZDIzNWNkYjFmZTE2QGdtYWlsLmNvbS8KLS0t
CiBkcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMgfCA2NCArKysrKysrKysrKysr
KysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgNjIgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3Bp
LmMgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKaW5kZXggZTM1NjdjYzY4
NmZhLi43ZjJmNDZjNzE0ODIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5r
cGFkX2FjcGkuYworKysgYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKQEAg
LTkzMjEsNiArOTMyMSw4IEBAIHN0YXRpYyBzdHJ1Y3QgaWJtX3N0cnVjdCBtdXRlX2xlZF9kcml2
ZXJfZGF0YSA9IHsKICNkZWZpbmUgU0VUX1NUT1AJIkJDU1MiCiAjZGVmaW5lIEdFVF9ESVNDSEFS
R0UJIkJEU0ciCiAjZGVmaW5lIFNFVF9ESVNDSEFSR0UJIkJEU1MiCisjZGVmaW5lIEdFVF9JTkhJ
QklUCSJCSUNHIgorI2RlZmluZSBTRVRfSU5ISUJJVAkiQklDUyIKIAogZW51bSB7CiAJQkFUX0FO
WSA9IDAsCkBAIC05MzM4LDYgKzkzNDAsNyBAQCBlbnVtIHsKIAlUSFJFU0hPTERfU1RBUlQsCiAJ
VEhSRVNIT0xEX1NUT1AsCiAJRk9SQ0VfRElTQ0hBUkdFLAorCUlOSElCSVRfQ0hBUkdFLAogfTsK
IAogc3RydWN0IHRwYWNwaV9iYXR0ZXJ5X2RhdGEgewpAQCAtOTQwOSw2ICs5NDEyLDEyIEBAIHN0
YXRpYyBpbnQgdHBhY3BpX2JhdHRlcnlfZ2V0KGludCB3aGF0LCBpbnQgYmF0dGVyeSwgaW50ICpy
ZXQpCiAJCS8qIFRoZSBmb3JjZSBkaXNjaGFyZ2Ugc3RhdHVzIGlzIGluIGJpdCAwICovCiAJCSpy
ZXQgPSAqcmV0ICYgMHgwMTsKIAkJcmV0dXJuIDA7CisJY2FzZSBJTkhJQklUX0NIQVJHRToKKwkJ
aWYgQUNQSV9GQUlMVVJFKHRwYWNwaV9iYXR0ZXJ5X2FjcGlfZXZhbChHRVRfSU5ISUJJVCwgcmV0
LCBiYXR0ZXJ5KSkKKwkJCXJldHVybiAtRU5PREVWOworCQkvKiBUaGUgaW5oaWJpdCBjaGFyZ2Ug
c3RhdHVzIGlzIGluIGJpdCAwICovCisJCSpyZXQgPSAqcmV0ICYgMHgwMTsKKwkJcmV0dXJuIDA7
CiAJZGVmYXVsdDoKIAkJcHJfY3JpdCgid3JvbmcgcGFyYW1ldGVyOiAlZCIsIHdoYXQpOwogCQly
ZXR1cm4gLUVJTlZBTDsKQEAgLTk0NDcsNiArOTQ1NiwyMiBAQCBzdGF0aWMgaW50IHRwYWNwaV9i
YXR0ZXJ5X3NldChpbnQgd2hhdCwgaW50IGJhdHRlcnksIGludCB2YWx1ZSkKIAkJCXJldHVybiAt
RU5PREVWOwogCQl9CiAJCXJldHVybiAwOworCWNhc2UgSU5ISUJJVF9DSEFSR0U6CisJCS8qIFdo
ZW4gc2V0dGluZyBpbmhpYml0IGNoYXJnZSwgd2Ugc2V0IGEgZGVmYXVsdCB2YWx1ZSBvZgorCQkg
KiBhbHdheXMgYnJlYWtpbmcgb24gQUMgZGV0YWNoIGFuZCB0aGUgZWZmZWN0aXZlIHRpbWUgaXMg
c2V0IHRvCisJCSAqIGJlIHBlcm1hbmVudC4KKwkJICogVGhlIGJhdHRlcnkgSUQgaXMgaW4gYml0
cyA0LTUsIDIgYml0cywKKwkJICogdGhlIGVmZmVjdGl2ZSB0aW1lIGlzIGluIGJpdHMgOC0yMywg
MiBieXRlcy4KKwkJICogQSB0aW1lIG9mIEZGRkYgaW5kaWNhdGVzIGZvcmV2ZXIuCisJCSAqLwor
CQlwYXJhbSA9IHZhbHVlOworCQlwYXJhbSB8PSBiYXR0ZXJ5IDw8IDQ7CisJCXBhcmFtIHw9IDB4
RkZGRiA8PCA4OworCQlpZiAoQUNQSV9GQUlMVVJFKHRwYWNwaV9iYXR0ZXJ5X2FjcGlfZXZhbChT
RVRfSU5ISUJJVCwgJnJldCwgcGFyYW0pKSkgeworCQkJcHJfZXJyKCJmYWlsZWQgdG8gc2V0IGlu
aGliaXQgY2hhcmdlIG9uICVkIiwgYmF0dGVyeSk7CisJCQlyZXR1cm4gLUVOT0RFVjsKKwkJfQor
CQlyZXR1cm4gMDsKIAlkZWZhdWx0OgogCQlwcl9jcml0KCJ3cm9uZyBwYXJhbWV0ZXI6ICVkIiwg
d2hhdCk7CiAJCXJldHVybiAtRUlOVkFMOwpAQCAtOTQ5NCw2ICs5NTE5LDggQEAgc3RhdGljIGlu
dCB0cGFjcGlfYmF0dGVyeV9wcm9iZShpbnQgYmF0dGVyeSkKIAkgKiA0KSBDaGVjayBmb3Igc3Vw
cG9ydAogCSAqIDUpIEdldCB0aGUgY3VycmVudCBmb3JjZSBkaXNjaGFyZ2Ugc3RhdHVzCiAJICog
NikgQ2hlY2sgZm9yIHN1cHBvcnQKKwkgKiA3KSBHZXQgdGhlIGN1cnJlbnQgaW5oaWJpdCBjaGFy
Z2Ugc3RhdHVzCisJICogOCkgQ2hlY2sgZm9yIHN1cHBvcnQKIAkgKi8KIAlpZiAoYWNwaV9oYXNf
bWV0aG9kKGhrZXlfaGFuZGxlLCBHRVRfU1RBUlQpKSB7CiAJCWlmIEFDUElfRkFJTFVSRSh0cGFj
cGlfYmF0dGVyeV9hY3BpX2V2YWwoR0VUX1NUQVJULCAmcmV0LCBiYXR0ZXJ5KSkgewpAQCAtOTU0
MCw2ICs5NTY3LDE2IEBAIHN0YXRpYyBpbnQgdHBhY3BpX2JhdHRlcnlfcHJvYmUoaW50IGJhdHRl
cnkpCiAJCQliYXR0ZXJ5X2luZm8uYmF0dGVyaWVzW2JhdHRlcnldLmNoYXJnZV9iZWhhdmlvdXJz
IHw9CiAJCQkJQklUKFBPV0VSX1NVUFBMWV9DSEFSR0VfQkVIQVZJT1VSX0ZPUkNFX0RJU0NIQVJH
RSk7CiAJfQorCWlmIChhY3BpX2hhc19tZXRob2QoaGtleV9oYW5kbGUsIEdFVF9JTkhJQklUKSkg
eworCQlpZiAoQUNQSV9GQUlMVVJFKHRwYWNwaV9iYXR0ZXJ5X2FjcGlfZXZhbChHRVRfSU5ISUJJ
VCwgJnJldCwgYmF0dGVyeSkpKSB7CisJCQlwcl9lcnIoIkVycm9yIHByb2JpbmcgYmF0dGVyeSBp
bmhpYml0IGNoYXJnZTsgJWRcbiIsIGJhdHRlcnkpOworCQkJcmV0dXJuIC1FTk9ERVY7CisJCX0K
KwkJLyogU3VwcG9ydCBpcyBtYXJrZWQgaW4gYml0IDUgKi8KKwkJaWYgKHJldCAmIEJJVCg1KSkK
KwkJCWJhdHRlcnlfaW5mby5iYXR0ZXJpZXNbYmF0dGVyeV0uY2hhcmdlX2JlaGF2aW91cnMgfD0K
KwkJCQlCSVQoUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJfSU5ISUJJVF9DSEFSR0UpOwor
CX0KIAogCWJhdHRlcnlfaW5mby5iYXR0ZXJpZXNbYmF0dGVyeV0uY2hhcmdlX2JlaGF2aW91cnMg
fD0KIAkJQklUKFBPV0VSX1NVUFBMWV9DSEFSR0VfQkVIQVZJT1VSX0FVVE8pOwpAQCAtOTY5OCwx
MCArOTczNSwyMiBAQCBzdGF0aWMgc3NpemVfdCBjaGFyZ2VfYmVoYXZpb3VyX3Nob3coc3RydWN0
IGRldmljZSAqZGV2LAogCWlmIChhdmFpbGFibGUgJiBCSVQoUE9XRVJfU1VQUExZX0NIQVJHRV9C
RUhBVklPVVJfRk9SQ0VfRElTQ0hBUkdFKSkgewogCQlpZiAodHBhY3BpX2JhdHRlcnlfZ2V0KEZP
UkNFX0RJU0NIQVJHRSwgYmF0dGVyeSwgJnJldCkpCiAJCQlyZXR1cm4gLUVOT0RFVjsKLQkJaWYg
KHJldCkKKwkJaWYgKHJldCkgewogCQkJYWN0aXZlID0gUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhB
VklPVVJfRk9SQ0VfRElTQ0hBUkdFOworCQkJZ290byBvdXQ7CisJCX0KKwl9CisKKwlpZiAoYXZh
aWxhYmxlICYgQklUKFBPV0VSX1NVUFBMWV9DSEFSR0VfQkVIQVZJT1VSX0lOSElCSVRfQ0hBUkdF
KSkgeworCQlpZiAodHBhY3BpX2JhdHRlcnlfZ2V0KElOSElCSVRfQ0hBUkdFLCBiYXR0ZXJ5LCAm
cmV0KSkKKwkJCXJldHVybiAtRU5PREVWOworCQlpZiAocmV0KSB7CisJCQlhY3RpdmUgPSBQT1dF
Ul9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9JTkhJQklUX0NIQVJHRTsKKwkJCWdvdG8gb3V0Owor
CQl9CiAJfQogCitvdXQ6CiAJcmV0dXJuIHBvd2VyX3N1cHBseV9jaGFyZ2VfYmVoYXZpb3VyX3No
b3coZGV2LCBhdmFpbGFibGUsIGFjdGl2ZSwgYnVmKTsKIH0KIApAQCAtOTczOCwxMSArOTc4Nywy
MiBAQCBzdGF0aWMgc3NpemVfdCBjaGFyZ2VfYmVoYXZpb3VyX3N0b3JlKHN0cnVjdCBkZXZpY2Ug
KmRldiwKIAljYXNlIFBPV0VSX1NVUFBMWV9DSEFSR0VfQkVIQVZJT1VSX0FVVE86CiAJCWlmIChh
dmFpbGFibGUgJiBCSVQoUE9XRVJfU1VQUExZX0NIQVJHRV9CRUhBVklPVVJfRk9SQ0VfRElTQ0hB
UkdFKSkKIAkJCXJldCA9IHRwYWNwaV9iYXR0ZXJ5X3NldF92YWxpZGF0ZShGT1JDRV9ESVNDSEFS
R0UsIGJhdHRlcnksIDApOworCQlpZiAoYXZhaWxhYmxlICYgQklUKFBPV0VSX1NVUFBMWV9DSEFS
R0VfQkVIQVZJT1VSX0lOSElCSVRfQ0hBUkdFKSkKKwkJCXJldCA9IG1pbihyZXQsIHRwYWNwaV9i
YXR0ZXJ5X3NldF92YWxpZGF0ZShJTkhJQklUX0NIQVJHRSwgYmF0dGVyeSwgMCkpOwogCQlpZiAo
cmV0IDwgMCkKIAkJCXJldHVybiByZXQ7CiAJCWJyZWFrOwogCWNhc2UgUE9XRVJfU1VQUExZX0NI
QVJHRV9CRUhBVklPVVJfRk9SQ0VfRElTQ0hBUkdFOgotCQlyZXQgPSB0cGFjcGlfYmF0dGVyeV9z
ZXRfdmFsaWRhdGUoRk9SQ0VfRElTQ0hBUkdFLCBiYXR0ZXJ5LCAxKTsKKwkJaWYgKGF2YWlsYWJs
ZSAmIEJJVChQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9JTkhJQklUX0NIQVJHRSkpCisJ
CQlyZXQgPSB0cGFjcGlfYmF0dGVyeV9zZXRfdmFsaWRhdGUoSU5ISUJJVF9DSEFSR0UsIGJhdHRl
cnksIDApOworCQlyZXQgPSBtaW4ocmV0LCB0cGFjcGlfYmF0dGVyeV9zZXRfdmFsaWRhdGUoRk9S
Q0VfRElTQ0hBUkdFLCBiYXR0ZXJ5LCAxKSk7CisJCWlmIChyZXQgPCAwKQorCQkJcmV0dXJuIHJl
dDsKKwkJYnJlYWs7CisJY2FzZSBQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFWSU9VUl9JTkhJQklU
X0NIQVJHRToKKwkJaWYgKGF2YWlsYWJsZSAmIEJJVChQT1dFUl9TVVBQTFlfQ0hBUkdFX0JFSEFW
SU9VUl9GT1JDRV9ESVNDSEFSR0UpKQorCQkJcmV0ID0gdHBhY3BpX2JhdHRlcnlfc2V0X3ZhbGlk
YXRlKEZPUkNFX0RJU0NIQVJHRSwgYmF0dGVyeSwgMCk7CisJCXJldCA9IG1pbihyZXQsIHRwYWNw
aV9iYXR0ZXJ5X3NldF92YWxpZGF0ZShJTkhJQklUX0NIQVJHRSwgYmF0dGVyeSwgMSkpOwogCQlp
ZiAocmV0IDwgMCkKIAkJCXJldHVybiByZXQ7CiAJCWJyZWFrOwotLSAKMi4zNC4wCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVs
IG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6
Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
