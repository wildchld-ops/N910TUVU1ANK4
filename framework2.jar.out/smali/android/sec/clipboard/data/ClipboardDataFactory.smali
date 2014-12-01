.class public Landroid/sec/clipboard/data/ClipboardDataFactory;
.super Ljava/lang/Object;
.source "ClipboardDataFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataUri;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;-><init>()V

    goto :goto_0

    :pswitch_6
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataScrapBitmap;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataScrapBitmap;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
