.class public Lcom/android/mms/saverestore/RestorePreviewActivity;
.super Landroid/app/ListActivity;
.source "RestorePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/saverestore/RestorePreviewActivity$ArrayData;
    }
.end annotation


# static fields
.field public static final BUBBLE_MIN_HEIGHT_DP:I = 0x2f

.field private static final MAX_TEXTS_IN_ONE_LINE:I = 0x816

.field public static final MENU_RESTORE_CANCEL:I = 0x2

.field public static final MENU_RESTORE_OK:I = 0x1

.field private static final SMS_BUBBLE_MAX_CHARS:I = 0xa0

.field private static final TAG:Ljava/lang/String; = "Mms/RestorePreviewActivity"


# instance fields
.field private array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/saverestore/SavedSmsMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mBubbleLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field mConvAddress:Ljava/lang/String;

.field private mDateSeperatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/saverestore/RestorePreviewActivity$ArrayData;",
            ">;"
        }
    .end annotation
.end field

.field public mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsAlignLeft:Z

.field private mIsLandscape:Z

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuRestore:Landroid/view/MenuItem;

.field private mMsgList:Landroid/widget/ListView;

.field private mMsgListItem:Landroid/view/View;

.field private mMsgListItemLayout:Landroid/widget/LinearLayout;

.field private mMsgsAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/mms/saverestore/SavedSmsMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mMenuCancel:Landroid/view/MenuItem;

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mMenuRestore:Landroid/view/MenuItem;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mIsAlignLeft:Z

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mConvAddress:Ljava/lang/String;

    new-instance v0, Lcom/android/mms/saverestore/RestorePreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/saverestore/RestorePreviewActivity$2;-><init>(Lcom/android/mms/saverestore/RestorePreviewActivity;)V

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/saverestore/RestorePreviewActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/RestorePreviewActivity;

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/saverestore/RestorePreviewActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/RestorePreviewActivity;

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mDateSeperatorList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/saverestore/RestorePreviewActivity;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/RestorePreviewActivity;

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/saverestore/RestorePreviewActivity;)[J
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/RestorePreviewActivity;

    invoke-direct {p0}, Lcom/android/mms/saverestore/RestorePreviewActivity;->getId()[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/saverestore/RestorePreviewActivity;)Lcom/android/mms/saverestore/SaveRestoreOperation;
    .locals 1
    .param p0    # Lcom/android/mms/saverestore/RestorePreviewActivity;

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    return-object v0
.end method

.method private enableDateView(Landroid/view/View;Lcom/android/mms/saverestore/SavedSmsMessage;)V
    .locals 11
    .param p1    # Landroid/view/View;
    .param p2    # Lcom/android/mms/saverestore/SavedSmsMessage;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {p2}, Lcom/android/mms/saverestore/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x5

    if-eq v8, v9, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/saverestore/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/saverestore/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_3

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p2}, Lcom/android/mms/saverestore/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p2}, Lcom/android/mms/saverestore/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    const v8, 0x7f0b0269

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v8, 0x7f0b020f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    const v8, 0x7f0b020b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    :goto_2
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    const v8, 0x7f0b0210

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/mms/saverestore/SavedSmsMessage;->getLocked()I

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    invoke-virtual {p2}, Lcom/android/mms/saverestore/SavedSmsMessage;->getType()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_7

    const v8, 0x7f0c0137

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    if-eqz v5, :cond_1

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    if-eqz v1, :cond_2

    const/16 v8, 0x8

    throw v1

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const v8, 0x7f0b026a

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewStub;

    invoke-virtual {v8}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const/16 v8, 0x53

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    const v8, 0x7f0b020a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    goto :goto_2

    :cond_6
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_9

    if-eqz v3, :cond_8

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/mms/util/NetworkConnectionUtils;->isMsgNetworkAvailable(Landroid/content/Context;Z)Z

    move-result v8

    if-nez v8, :cond_8

    const v8, 0x7f0c009d

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    const/16 v6, 0x8

    goto :goto_4

    :cond_8
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x0

    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/mms/saverestore/SavedSmsMessage;->getDate()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method public static formatDate(J)J
    .locals 6
    .param p0    # J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit16 v4, v3, 0x2710

    mul-int/lit8 v5, v2, 0x64

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    int-to-long v4, v4

    return-wide v4
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # J

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getDayOfWeekString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getId()[J
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v2}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v0, v5, [J

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v2}, Lcom/android/mms/saverestore/SavedSmsMessage;->getCanonicalAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v0, v4

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    new-array v0, v5, [J

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v2}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v0, v4

    move-object v1, v0

    goto :goto_0
.end method

.method private getSpecificConvArray(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/saverestore/SavedSmsMessage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v2}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v2}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v2}, Lcom/android/mms/saverestore/SavedSmsMessage;->getCanonicalAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private updateActionBar()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mConvAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mConvAddress:Ljava/lang/String;

    invoke-static {v2, v3, v3}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v2, 0x7f0c000b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v2, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->startRestoreOperation(Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b031e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "Mms/RestorePreviewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configurationChanged(),newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mIsLandscape:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1    # Landroid/os/Bundle;

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v13, 0x7f04008e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/saverestore/RestorePreviewActivity;->mContext:Landroid/content/Context;

    new-instance v13, Lcom/android/mms/saverestore/SaveRestoreOperation;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/mms/saverestore/SaveRestoreOperation;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    const-string v13, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mMsgList:Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "file_path"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/mms/data/Conversation;->readXmlFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_1

    :cond_0
    const v13, 0x7f0c037a

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v10, v13, -0x1

    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v6, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    const-string v13, "address"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mConvAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mConvAddress:Ljava/lang/String;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mConvAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mms/saverestore/RestorePreviewActivity;->getSpecificConvArray(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/saverestore/RestorePreviewActivity;->updateActionBar()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mDateSeperatorList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mDateSeperatorList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v11, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v9}, Lcom/android/mms/saverestore/SavedSmsMessage;->getDate()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/android/mms/saverestore/RestorePreviewActivity;->formatDate(J)J

    move-result-wide v4

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-eqz v13, :cond_4

    cmp-long v13, v11, v4

    if-gez v13, :cond_3

    :cond_4
    move-wide v11, v4

    invoke-virtual {v9}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mDateSeperatorList:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/mms/saverestore/RestorePreviewActivity$ArrayData;

    invoke-virtual {v9}, Lcom/android/mms/saverestore/SavedSmsMessage;->getId()J

    move-result-wide v15

    invoke-virtual {v9}, Lcom/android/mms/saverestore/SavedSmsMessage;->getCanonicalAddress()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v14 .. v17}, Lcom/android/mms/saverestore/RestorePreviewActivity$ArrayData;-><init>(JLjava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/saverestore/SavedSmsMessage;

    invoke-virtual {v13}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v13

    :goto_4
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mConvAddress:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const/4 v13, 0x0

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mDateSeperatorList:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/mms/saverestore/RestorePreviewActivity$ArrayData;

    invoke-virtual {v9}, Lcom/android/mms/saverestore/SavedSmsMessage;->getId()J

    move-result-wide v15

    invoke-virtual {v9}, Lcom/android/mms/saverestore/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v14 .. v17}, Lcom/android/mms/saverestore/RestorePreviewActivity$ArrayData;-><init>(JLjava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    new-instance v13, Lcom/android/mms/saverestore/RestorePreviewActivity$1;

    const v14, 0x7f04006c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v13, v0, v1, v14, v15}, Lcom/android/mms/saverestore/RestorePreviewActivity$1;-><init>(Lcom/android/mms/saverestore/RestorePreviewActivity;Landroid/content/Context;ILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mMsgsAdapter:Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mMsgsAdapter:Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mMsgList:Landroid/widget/ListView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mMsgsAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mMsgsAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mMsgsAdapter:Landroid/widget/ArrayAdapter;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-virtual {v0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->OnDestroy()V

    iput-object v1, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1    # Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const-string v3, "Mms/RestorePreviewActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOptionsItemSelected(),item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v1, :sswitch_data_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :sswitch_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "file_path"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v4, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->array:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/mms/saverestore/SaveRestoreOperation;->startRestoreOperation(Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mSaveRestoreOperation:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-direct {p0}, Lcom/android/mms/saverestore/RestorePreviewActivity;->getId()[J

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/saverestore/SaveRestoreOperation;->checkForDuplicates([J)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1    # Landroid/view/Menu;

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "Mms/RestorePreviewActivity"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 v0, 0x2

    const v1, 0x7f0c0183

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mMenuCancel:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0c0288

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mMenuRestore:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mMenuRestore:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-boolean v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f0202d2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/saverestore/RestorePreviewActivity;->mMenuRestore:Landroid/view/MenuItem;

    const v1, 0x7f0202d3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    return v3
.end method
