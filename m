Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 228CBAC973D
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 30 May 2025 23:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HNdX7J8u1a6AyRXgxgo4MPASvJ1r+yDHoNl8dPz31Po=; b=jD0sQTgzTO+ffS94m5ORrnPPsK
	MjnHklx/vufb00GR5S0Yr7HNqCPm3pT5EJhGGeJGsxGe/UiVKlvZ8SQmP01P2PceIB41foMimXZFC
	YGU9FKj+TDa5SxMqUMRcXOFu/ehKoiwojhi6+rNZ5FdFl6DfEtzHN4+GbnWCjDuwO5eQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1uL7SR-0008Uj-TM;
	Fri, 30 May 2025 21:40:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gdamjan@gmail.com>) id 1uL7SQ-0008Ud-4Q
 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 30 May 2025 21:40:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:Subject:
 Message-ID:Date:From:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IdDD6nk+tLshDTEZTShKWdPKG7oAab19Q5kzdLhnMXg=; b=El+ZKbv9AyoMhskrt+2yvE+1S3
 ZXw+IlscqvKZqhogRO76Zm2Ruhc3sM1aI7Zc1wkxs5Hppk/MuZPLQbC0btHLx9eTVajPf9W07Kw8A
 WdMXXaWCfV30xG1vf1MjhVstLLt0lrZGeV3VPQC3fVID42usKegcI2QzBe5kF/LmhCAc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IdDD6nk+tLshDTEZTShKWdPKG7oAab19Q5kzdLhnMXg=; b=X
 5cVGm+FP8OJVrXzHTgdvdg7dXxFK1gQ2FWSf4hs99KZkuielon71reSnh+/MgG1NxaULXV7lnAias
 rViflSB8IXr2A6Fj0eMKjY3gTXZiH8EPWWGFaXWr/AZ2v+UrymUUubwL+dViBrB2JzBajrC81yoke
 nI7AklBjYf+QYo74=;
Received: from mail-yb1-f181.google.com ([209.85.219.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uL7SP-0000Ee-8K for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 30 May 2025 21:40:06 +0000
Received: by mail-yb1-f181.google.com with SMTP id
 3f1490d57ef6-e731a56e111so2250432276.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Fri, 30 May 2025 14:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1748641199; x=1749245999; darn=lists.sourceforge.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=IdDD6nk+tLshDTEZTShKWdPKG7oAab19Q5kzdLhnMXg=;
 b=MXRPAVos+TDPhAHtkyrxACTyGyEc1YQbRcCnH66rGwIQNM3dMt1OGQd4N5+3h2D5fN
 NFL4Bs4ArWDFB6xmNczav7lg1zL4b5h8oFL4Xe4NQOaHZ5dxBVUxOVdYqv8ILPG8TDjn
 EXcAbXjWM+hYTYJqciRbKMMYA1y+X5629llD6tkeB5HZmNzcnEF8XSc8d+w14aocXSF9
 QCFwuUVitWgSQR+C4SW3dWsx43iPiETMzzKjE/iXk8iTcP/3FSvFOwqFpRD4ygroDpag
 Pp+ouZQkHsruzqoUYFpEX+agzts9IkeRog2shZVdNxL/1l88PfrVf8JTg143LB3o81Fm
 ud/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748641199; x=1749245999;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=IdDD6nk+tLshDTEZTShKWdPKG7oAab19Q5kzdLhnMXg=;
 b=fdllwUqLBNaJpGKUmfEozbOqDygaE+8V57Vt6j1nItGPLIbaXNc2g7zTrZOQ2uQTgK
 d+lddzJqRtdjCfdHq6N+qISw1IPszxaEip4XFD8nzHG23lu1ypUKHFUOyHTYgtkh3IdV
 Y2b3rLx/cjoPmiVmm3s5UWHiQvLKwKaExJH+9sUlqi+S6eqLj3pR2abPhYLzAj8vc+vE
 BH66G2TVSNbS7JJf1WbPwuppu0060uChjnzmnwZKHt4glQ7hBGilxjzg6VOL0RtpJhV4
 buhQIAqIVsOAI8jdtLQHYDGaETQ2slTctFBHduEVrkmPp/CpQRdq9Gaows6AP1IyJbbj
 oYuQ==
X-Gm-Message-State: AOJu0Yy+bJ3CTPGEo8lLBwYyoJBNtJp/2lrzmBZQ6gNg2KyrDjIbNVZ8
 U1+VpAYsvQU6CpPGX0fGyg1+7JiK/kqgDO3PsYqaSQSCTKH6pB+QIbVS2aW2dYbvr0DlKGAKQJ0
 G4hYQPHNde+HrcZ46giBylYyzIcUZ+quYXE0g
X-Gm-Gg: ASbGncuO8BZzhGfG2/OJTfb+IktPGyiZxEvXz1YaPZK2AzGmHCpLFGiAbyQ7vmYDJRS
 3usFZBxJZXyTOz8lrOoU2KVtm3E7JhD6YpBOR+LJfWDEbc2aGpungrXB2SomfhWRWK5qjjDbI1m
 8u4/14ormEUrsqXuAQSEM81nkXw110OzRMJWXpx1Q69xQ=
X-Google-Smtp-Source: AGHT+IEMXYjO0tE5q57qamkGR7Z/g7Xd8e2N4bfdqz7HN7gYyO0n/QnSgU31ez9uZhHd8ilipVkgE3079BvS8jyG/xI=
X-Received: by 2002:a05:6902:33c6:b0:e7d:c72c:d310 with SMTP id
 3f1490d57ef6-e7f81e566b3mr6395445276.27.1748641199177; Fri, 30 May 2025
 14:39:59 -0700 (PDT)
MIME-Version: 1.0
From: Damjan Georgievski <gdamjan@gmail.com>
Date: Fri, 30 May 2025 23:39:47 +0200
X-Gm-Features: AX0GCFsKlLKYntKpajxcqs26d3iZ4pGTQzHgZ7EltmdH1d_yrNyM_1oECbuAukU
Message-ID: <CAEk1YH7cj=UH5DPCscXZdj8OTA6D+7AzyOS8XpPFYqvkXCE6JQ@mail.gmail.com>
To: ibm-acpi-devel@lists.sourceforge.net
X-Headers-End: 1uL7SP-0000Ee-8K
Subject: [ibm-acpi-devel] thinkpad_acpi: unhandled HKEY event 0x1402
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

T24gdGhlIFRoaW5rcGFkIFg5LTE0IEdlbiAxICgyMDI1KQpETUk6IExFTk9WTyAyMVFBMDA0OFJN
LzIxUUEwMDQ4Uk0sIEJJT1MgTjRERVQzMFcgKDEuMTMgKSAwNC8wMi8yMDI1CgpwcmVzc2luZyB0
aGUgRm4rRjExIGJ1dHRvbiwgaXQgZ2VuZXJhdGVzIHRoZSBzY2FuY29kZSAweDE0MDIgd2hpY2gK
dGhpbmtwYWRfYWNwaSBjb21wbGFpbnMgYWJvdXQuCgpUaGUgZG9jdW1lbnRhdGlvbiBhYm91dCB0
aGUgc2hvcnRjdXQgc2F5czoKIkxhdW5jaCB0aGUgU21hcnQgU2hhcmUgZmVhdHVyZSBpbiB0aGUg
SW50ZWzCriBVbmlzb27ihKIgYXBwLiIKCmh0dHBzOi8vZG93bmxvYWQubGVub3ZvLmNvbS9tYW51
YWwvdGhpbmtwYWRfeDlfMTQvdXNlcl9ndWlkZS9lbi9Vc2VfdGhlX2tleWJvYXJkX3Nob3J0Y3V0
cy5odG1sCgpub3Qgc3VyZSB3aGljaCBMaW51eCBrZXkgY29kZSBpcyBtb3N0IGFwcHJvcHJpYXRl
IGhlcmUuCktFWV9WRU5ET1IgcGVyaGFwcz8hCgotLSAKZGFtamFuCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBs
aXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
