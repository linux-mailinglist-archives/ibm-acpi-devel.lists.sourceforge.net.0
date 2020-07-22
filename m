Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F09228FED
	for <lists+ibm-acpi-devel@lfdr.de>; Wed, 22 Jul 2020 07:42:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jy7Vv-0000JT-24; Wed, 22 Jul 2020 05:41:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <dmitry.torokhov@gmail.com>) id 1jy7Vt-0000JM-R3
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 22 Jul 2020 05:41:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JOXcjH3Ds2znsGQsPtT2U0WmJsXIq3lc+gYn1wfYnuU=; b=lOvMOOnN1pDPMBd/nZm0aQB0f7
 GdHK3JVPh6DDRxCqUznsvgX52dvDwkIhxRpima1eHJE3zGXlpWL1sG3gWMiFKXny3ZIJfveI6f/cH
 TfR4Omb2BE8oZgF4nhA/ocHXv2oFC1JOy6mVnH82B8vrOLZUCdVspd2B/0YUN0mJSNuo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JOXcjH3Ds2znsGQsPtT2U0WmJsXIq3lc+gYn1wfYnuU=; b=Zgtn0hoS8zw2VnpbVwPSFWXcl+
 tGhekZ+GAJH5AZZ7k4EcrVUJpSJLRbqryXi4pza0lzGRB1Cle67tvNzjj2JKOOyzSxQCvzeFZadyQ
 pB/vG9Lqo4FgFuupdhA9mLAmhFfBNcyNKFMavKjva2+8Xi/OmJoDCoft77aJ+L3yShUQ=;
Received: from mail-pl1-f194.google.com ([209.85.214.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jy7Vq-00D6eR-1F
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 22 Jul 2020 05:41:57 +0000
Received: by mail-pl1-f194.google.com with SMTP id x8so392786plm.10
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 21 Jul 2020 22:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=JOXcjH3Ds2znsGQsPtT2U0WmJsXIq3lc+gYn1wfYnuU=;
 b=dEUQNOgGUrX8oVxReZCZ/tx5vnWEETp9edbUaud/VSlLiopK4JeDzocnvain0FsLMw
 7PICdvOjUghPVTCW0qjN7n6SnZ2H5nN1HMvs9uDK+IXA85ET0oBW15K8tQX8j6o617pN
 q+l75VjFGRhh/avhzCvbSqMXcuvtlbi3DMXeui18+MwYxPLsjtIX2AZUZJiOAE/9flCV
 ea2Fhc2rKiCCf9XkPrhipvLf0Mgp4dryjrLrNufZYZ0rIbtgYRwukhkD6F9yssQLC+fk
 WRh6Y5nrhcl9JFV3K3uPb9dVFzvSPLWAr6x/D7HTFWahFrwb9QZUZWXQW/5qLx4TRohI
 fmGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JOXcjH3Ds2znsGQsPtT2U0WmJsXIq3lc+gYn1wfYnuU=;
 b=WI37t9JlL3EjEff3ud5RwaFWyzJPsBmKCFZrh70YoL0CZDdnfMBpFd15PCVZ9mhcgF
 J3Z8nlujR7cgm9UMcVwVDg6GvVZ/R8S1CjtZgnqPxU9eXIkveHsCsed1ugvdrL+Sc8Ux
 0MfJW1g5zNdqqxLKDoX4eku0EI6t7p8qrEtuOu6KuCnRrmLL9FhvK8WNCyFDu9Qwg3i9
 MmwuMHKo+4WVkQPhqQhH3ZqNk09p0NDkU+VJBl+mki/y0dZv4D9VF0kqVFbEsv+F1uLR
 hnttmSDXoAo81i01D5YAD8eH6L5Uhd2e/OeoxSmnPA6dRvIhOjuO00WOMO/TNFFdFV9/
 zhHQ==
X-Gm-Message-State: AOAM531wj8OTklJNe/N1oytXlRvRZdHW/1LcZTFpFHev09QQAEsiax5n
 DfGXPKEP4cswQEN4WdGa0DQ=
X-Google-Smtp-Source: ABdhPJwyZCXr57OI4rRNX0FltpSSmzGxpQFnQXUcYXlI0UFD0tljQn5BhDndhCziMb1aAG5xOB3eAQ==
X-Received: by 2002:a17:902:684e:: with SMTP id
 f14mr26597687pln.166.1595396508374; 
 Tue, 21 Jul 2020 22:41:48 -0700 (PDT)
Received: from dtor-ws ([2620:15c:202:201:a6ae:11ff:fe11:fcc3])
 by smtp.gmail.com with ESMTPSA id d16sm22280079pfo.156.2020.07.21.22.41.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jul 2020 22:41:47 -0700 (PDT)
Date: Tue, 21 Jul 2020 22:41:44 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Henrique de Moraes Holschuh <hmh@hmh.eng.br>
Message-ID: <20200722054144.GQ1665100@dtor-ws>
References: <20200717114155.56222-1-hdegoede@redhat.com>
 <20200719225649.GA4341@khazad-dum.debian.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200719225649.GA4341@khazad-dum.debian.net>
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (dmitry.torokhov[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hmh.eng.br]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jy7Vq-00D6eR-1F
Subject: Re: [ibm-acpi-devel] [PATCH 0/3] Add 3 new keycodes and use them
 for 3 new hotkeys on new Lenovo Thinkpads
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
Cc: Marco Trevisan <marco.trevisan@canonical.com>,
 Benjamin Berg <bberg@redhat.com>, ibm-acpi-devel@lists.sourceforge.net,
 Christian Kellner <ckellner@redhat.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>, Mark Pearson <mpearson@lenovo.com>,
 linux-input@vger.kernel.org, Darren Hart <dvhart@infradead.org>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

On Sun, Jul 19, 2020 at 07:56:49PM -0300, Henrique de Moraes Holschuh wrote:
> On Fri, 17 Jul 2020, Hans de Goede wrote:
> > This is a simple patch-series adding support for 3 new hotkeys found
> > on various new Lenovo Thinkpad models.
> 
> For all three patches, pending an ack for the new keycodes by the input
> maintainers:
> 
> Acked-by: Henrique de Moraes Holschuh <hmh@hmh.eng.br>

Do you want me to merge all 3 through input tree?

Thanks.

-- 
Dmitry


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
