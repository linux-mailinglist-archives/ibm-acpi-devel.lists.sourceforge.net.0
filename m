Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 959658A5BDF
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 15 Apr 2024 21:59:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rwSTi-0008EP-Dz;
	Mon, 15 Apr 2024 19:58:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1rwSTh-0008EJ-GU
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 19:58:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hBd42mgmvxrD8R9WdimJbzSeiQhD8nTqmtgkyeTdRGU=; b=gJt20c7yW+JqQg+KhV3syOwH7g
 wbx/SHQwSibwpjDCTauVUvEmu/A6cXgFh+tBNXnq/NpGurf4tZqcWRI7BORVf1YJ4N4AWBaJ03iN1
 bg7zBBTVetqjO3U1S0XmAzUFWhU3P70ZoUxAkxK/OESoqqLHdV3WLGuZpnzTbNE5X4Os=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hBd42mgmvxrD8R9WdimJbzSeiQhD8nTqmtgkyeTdRGU=; b=AmT+q/7Sq3vYcbYEDXwgjMz7Tf
 R0zRekJuv2g8MpQegyOrYIvY1/WsuqqRzqiSjrOq4kthwTLWgTZXkLnFSN6yB7pLB6F/fdSRSvkef
 YJ09i5lVIkEX+C6o8fu3MyW+6rDZDQauuxyjsyoP+LSbVoGicF6aM4DTM5Zd7HRP1sJA=;
Received: from mail-pl1-f172.google.com ([209.85.214.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rwSTh-00043g-83 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 15 Apr 2024 19:58:57 +0000
Received: by mail-pl1-f172.google.com with SMTP id
 d9443c01a7336-1e5aa82d1f6so19663855ad.0
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 15 Apr 2024 12:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713211126; x=1713815926; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=hBd42mgmvxrD8R9WdimJbzSeiQhD8nTqmtgkyeTdRGU=;
 b=kfgIUO8IRoAZl/Q+8J0+GgMQR3SxiqYp11IN78pPdLzRr6QzbMGA2vXmIuV8fT/Kcz
 UHK6hU4x2c4MjDgIUEovfsAwz4sHZreqdC8A5opRFghy/t/KrbFTAwMq3FbrY3E4mGGv
 sFNopGNKgeIHac7Hb9kOi4EmicKYbp7+pT68WXJhSvVNdo+7BXkLQtRvOv0d7SiMc2c3
 m4zw1o9XrUnQtIpuPN2JtdbDn3+7IEQVlCF7YOwISx6CJTXFeYHmNxPdkVnfmJWF70Tw
 9Av7RJt2asmll7adGzdevIPZl920By2ykAq/JYsItswLF/w2NcUm2rswW27bi0TQISIx
 a0jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713211126; x=1713815926;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hBd42mgmvxrD8R9WdimJbzSeiQhD8nTqmtgkyeTdRGU=;
 b=gVp0oEXunUE1wJz4S57ccDoGNnvrTY+5fV+g7I52MglehS+H2HYcZqyvS3JEudsTBg
 hEqT7vj8YRY9bNgyMzzGHhy50sgCRgCttq2IMX6+fpV4l8zI7154Eb1iwmenu4GaKXPK
 sK5Ef/AXf7eItDZYkat0ZNTOJSOrd9XYn0g+14QspGIOoE6ytLglgqTeGM5GA0R7/PTp
 6VvYSueoeQCob8che4bndZ3aMpJctfGGAUw4CfnTzVz+HLNTwtfKLHFwxU8qtqQKrxcR
 nXMrR04YXrJ/cOrzXWeYWj7rDbQE5pdZaiZEKlBWRmeDcAs2jNgVRfPR9StZ5/YQFjr+
 fIFA==
X-Forwarded-Encrypted: i=1;
 AJvYcCX3OTMAC2g2zSSvZQa0vzwADoubEhCLChXpjfvKW7OmM/hkq3Foq9FJfn9xsBEKqml+X7/8z3sMowRiHHoJNXKqO4/UT2dUNdwyFUxfXApG828msZ8=
X-Gm-Message-State: AOJu0YyVjDg3J5aD5MQv5BvZX9PLjHCfsGfE2xyIh3m9YUdEE1wIdHlv
 wnY+7pUPSnFSdSkTcczwMdk6K+MciMkFCdbS2zx03RJV6ucESQCvv8AMEg==
X-Google-Smtp-Source: AGHT+IH7ea3KoZiXOIC3+Ronx2QI3xFZgHQdbbyRyw0DuQ+sbEfTPQxggp/eHNMUBJezDbW9ayO0Ag==
X-Received: by 2002:a17:902:8214:b0:1e5:10a2:7bde with SMTP id
 x20-20020a170902821400b001e510a27bdemr68351pln.18.1713211126309; 
 Mon, 15 Apr 2024 12:58:46 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:fbbe:421b:9296:f28c])
 by smtp.gmail.com with ESMTPSA id
 n4-20020a170902e54400b001e3f4f1a2aasm8348636plf.23.2024.04.15.12.58.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Apr 2024 12:58:45 -0700 (PDT)
Date: Mon, 15 Apr 2024 12:58:43 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <Zh2G85df29tPP6OK@google.com>
References: <20240324210817.192033-2-mpearson-lenovo@squebb.ca>
 <ZhR-WPx7dgKxziMb@google.com>
 <f3342c0b-fb31-4323-aede-7fb02192cf44@redhat.com>
 <ZhW3Wbn4YSGFBgfS@google.com> <ZhXpZe1Gm5e4xP6r@google.com>
 <92ee5cb2-565e-413c-b968-81393a9211c4@app.fastmail.com>
 <ZhcogDESvZmUPEEf@google.com>
 <91593303-4a6a-49c9-87a0-bb6f72f512a1@app.fastmail.com>
 <Zh2CtKy1NfKfojzS@google.com>
 <484638e2-1565-454b-97f8-4fcc6514a69c@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <484638e2-1565-454b-97f8-4fcc6514a69c@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Apr 15, 2024 at 09:50:37PM +0200,
 Hans de Goede wrote:
 > Hi, > > On 4/15/24 9:40 PM, Dmitry Torokhov wrote: > > On Wed, Apr 10,
 2024 at 10:48:10PM -0400, Mark Pearson wrote: > >> > >> I have a [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.214.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dmitry.torokhov[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.172 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1rwSTh-00043g-83
Subject: Re: [ibm-acpi-devel] [PATCH 1/4] Input: Add trackpoint doubletap
 and system debug info keycodes
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
Cc: linux-kernel@vger.kernel.org, "platform-driver-x86@vger.kernel.org"
 <platform-driver-x86@vger.kernel.org>, Vishnu Sankar <vsankar@lenovo.com>,
 ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>, linux-input@vger.kernel.org,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Peter Hutterer <peter.hutterer@redhat.com>, Nitin Joshi1 <njoshi1@lenovo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Mon, Apr 15, 2024 at 09:50:37PM +0200, Hans de Goede wrote:
> Hi,
> 
> On 4/15/24 9:40 PM, Dmitry Torokhov wrote:
> > On Wed, Apr 10, 2024 at 10:48:10PM -0400, Mark Pearson wrote:
> >>
> >> I have a stronger preference to keep the KEY_DOUBLECLICK - that one seems less controversial as a genuine new input event.
> > 
> > Please see my response to Peter's letter. I think it very much depends
> > on how it will be used (associated with the pointer or standalone as it
> > is now).
> > 
> > For standalone application, recalling your statement that on Win you
> > have this gesture invoke configuration utility I would argue for
> > KEY_CONFIG for it.
> 
> KEY_CONFIG is already generated by Fn + F# on some ThinkPads to launch
> the GNOME/KDE control center/panel and I believe that at least GNOME
> comes with a default binding to map KEY_CONFIG to the control-center.

Not KEY_CONTROLPANEL?

Are there devices that use both Fn+# and the doubleclick? Would it be an
acceptable behavior for the users to have them behave the same?

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
