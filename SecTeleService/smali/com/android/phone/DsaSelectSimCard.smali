.class public Lcom/android/phone/DsaSelectSimCard;
.super Landroid/app/Activity;
.source "DsaSelectSimCard.java"


# static fields
.field public static mWaitDialog:Landroid/app/ProgressDialog;


# instance fields
.field public final dsaNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dsaset:Lcom/android/phone/DsaSetting;

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentStatus:I

.field private mDialogPause:Z

.field private mFromSetupWizard:Z

.field private mIsFirst:Z

.field private mLeftSoftBtn:Landroid/widget/LinearLayout;

.field private mLeftSoftText:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRightSoftBtn:Landroid/widget/LinearLayout;

.field private mRightSoftText:Landroid/widget/TextView;

.field private mSoftLayout:Landroid/widget/LinearLayout;

.field private mSoftLayoutSW:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v1, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DsaSelectSimCard;->items:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/DsaSelectSimCard;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/android/phone/DsaSelectSimCard;->mDialogPause:Z

    new-instance v0, Lcom/android/phone/DsaSelectSimCard$10;

    invoke-direct {v0, p0}, Lcom/android/phone/DsaSelectSimCard$10;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    iput-object v0, p0, Lcom/android/phone/DsaSelectSimCard;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DsaSelectSimCard;)I
    .locals 1
    .param p0    # Lcom/android/phone/DsaSelectSimCard;

    iget v0, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/DsaSelectSimCard;I)I
    .locals 0
    .param p0    # Lcom/android/phone/DsaSelectSimCard;
    .param p1    # I

    iput p1, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    return p1
.end method

.method private dsaLog(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "DsaSelectSimCard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    const-string v0, "DsaSelectSimCard"

    const-string v1, "dismissDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public displayDialog(I)V
    .locals 7
    .param p1    # I

    const v6, 0x7f0908ac

    const v5, 0x7f09007e

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "DsaSelectSimCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mDialogPause:Z

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, v6}, Lcom/android/phone/DsaSelectSimCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/android/phone/DsaSelectSimCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    sget-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    sget-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/phone/DsaSelectSimCard$4;

    invoke-direct {v1, p0}, Lcom/android/phone/DsaSelectSimCard$4;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v6}, Lcom/android/phone/DsaSelectSimCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/android/phone/DsaSelectSimCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    sget-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    sget-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/phone/DsaSelectSimCard$5;

    invoke-direct {v1, p0}, Lcom/android/phone/DsaSelectSimCard$5;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public displayResultDialog()V
    .locals 14

    const v13, 0x7f090223

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v9, "DsaSelectSimCard"

    const-string v10, "displayResultDialog"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->dismissDialog()V

    iput-boolean v11, p0, Lcom/android/phone/DsaSelectSimCard;->mDialogPause:Z

    new-instance v0, Lcom/android/phone/DsaResult;

    invoke-direct {v0}, Lcom/android/phone/DsaResult;-><init>()V

    invoke-virtual {v0}, Lcom/android/phone/DsaResult;->CheckDsaResult()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v9, "DsaSelectSimCard"

    const-string v10, "displayResultDialog [Activated Success]"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "dsa_main"

    invoke-virtual {p0, v9, v11}, Lcom/android/phone/DsaSelectSimCard;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v9, v11

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dsa_is_activate"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v0, v12}, Lcom/android/phone/DsaResult;->makeResultInformation(I)Ljava/lang/String;

    move-result-object v6

    const-string v9, "dsa_result_dialog_success_is_checked"

    invoke-interface {v4, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v9, 0x7f04002d

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0a00cb

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0908ac

    invoke-virtual {p0, v10}, Lcom/android/phone/DsaSelectSimCard;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/phone/DsaSelectSimCard$7;

    invoke-direct {v10, p0}, Lcom/android/phone/DsaSelectSimCard$7;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {p0, v13}, Lcom/android/phone/DsaSelectSimCard;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/android/phone/DsaSelectSimCard$6;

    invoke-direct {v11, p0}, Lcom/android/phone/DsaSelectSimCard$6;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->finish()V

    goto :goto_0

    :cond_1
    const-string v9, "DsaSelectSimCard"

    const-string v10, "displayResultDialog [Activated Failed]"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v11}, Lcom/android/phone/DsaResult;->makeResultInformation(I)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0908ad

    invoke-virtual {p0, v10}, Lcom/android/phone/DsaSelectSimCard;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/phone/DsaSelectSimCard$9;

    invoke-direct {v10, p0}, Lcom/android/phone/DsaSelectSimCard$9;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {p0, v13}, Lcom/android/phone/DsaSelectSimCard;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/android/phone/DsaSelectSimCard$8;

    invoke-direct {v11, p0}, Lcom/android/phone/DsaSelectSimCard$8;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1    # Landroid/os/Bundle;

    const v10, 0x7f0908ab

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v3, "DsaSelectSimCard"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f04002e

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaSelectSimCard;->setContentView(I)V

    const v3, 0x7f0908a8

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaSelectSimCard;->setTitle(I)V

    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->items:Ljava/util/ArrayList;

    const v4, 0x7f0908aa

    invoke-virtual {p0, v4}, Lcom/android/phone/DsaSelectSimCard;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->items:Ljava/util/ArrayList;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v10, v4}, Lcom/android/phone/DsaSelectSimCard;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->items:Ljava/util/ArrayList;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v10, v4}, Lcom/android/phone/DsaSelectSimCard;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x7f04009f

    iget-object v4, p0, Lcom/android/phone/DsaSelectSimCard;->items:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x7f0a00cc

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/DsaSelectSimCard;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "DsaExtraInitial"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    const-string v3, "SecSetupWizard"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    const-string v3, "DsaSelectSimCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsFirst : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFromSetupWizard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f0a00c6

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0a00c1

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayoutSW:Landroid/widget/RelativeLayout;

    iget-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-eqz v3, :cond_2

    const v3, 0x7f0a00d1

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    const v3, 0x7f0a00d2

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v3, 0x7f0a00d3

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftBtn:Landroid/widget/LinearLayout;

    const v3, 0x7f0a00d4

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :goto_0
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/phone/DsaSelectSimCard$1;

    invoke-direct {v4, p0}, Lcom/android/phone/DsaSelectSimCard$1;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftBtn:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/phone/DsaSelectSimCard$2;

    invoke-direct {v4, p0}, Lcom/android/phone/DsaSelectSimCard$2;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/android/phone/DsaSetting;

    invoke-direct {v3}, Lcom/android/phone/DsaSetting;-><init>()V

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->dsaset:Lcom/android/phone/DsaSetting;

    iget-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v3, :cond_4

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.android.phone.dsacomplete"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v3, Lcom/android/phone/DsaSelectSimCard$3;

    invoke-direct {v3, p0}, Lcom/android/phone/DsaSelectSimCard$3;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/phone/DsaSelectSimCard;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftText:Landroid/widget/TextView;

    const v4, 0x7f0908a6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftText:Landroid/widget/TextView;

    const v4, 0x7f0908a7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayoutSW:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const v3, 0x7f0a00cd

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    const v3, 0x7f0a00ce

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const v3, 0x7f0a00cf

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftBtn:Landroid/widget/LinearLayout;

    const v3, 0x7f0a00d0

    invoke-virtual {p0, v3}, Lcom/android/phone/DsaSelectSimCard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayoutSW:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayoutSW:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1    # Landroid/view/Menu;

    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v1, 0x0

    const-string v2, "DsaSelectSimCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateOptionsMenu : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-nez v2, :cond_1

    const v2, 0x7f0902d1

    invoke-interface {p1, v1, v5, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v2, 0x2

    const v3, 0x7f0902d0

    invoke-interface {p1, v1, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f090789

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaSelectSimCard;->setTitle(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "DsaSelectSimCard"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DsaSelectSimCard;->mDialogPause:Z

    iget-boolean v0, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/DsaSelectSimCard;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/DsaSelectSimCard;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v2, 0x1

    const-string v3, "DsaSelectSimCard"

    const-string v4, "onKeyUp"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "DsaExtraInitial"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "extra_init_dialog"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "extra_init_dialog"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const/high16 v3, 0x40000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "com.android.phone.DsaPhoneNumber"

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/DsaSelectSimCard;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v2

    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v2, :cond_2

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/android/phone/DsaSelectSimCard;->softkeyRun1(Landroid/view/View;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/android/phone/DsaSelectSimCard;->softkeyRun2(Landroid/view/View;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "DsaSelectSimCard"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->dismissDialog()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "DsaSelectSimCard"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v1, "SelectSimStatus"

    invoke-virtual {p0, v1, v3}, Lcom/android/phone/DsaSelectSimCard;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DsaSelectSimCard;->mListView:Landroid/widget/ListView;

    const-string v2, "SimStatus"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const-string v1, "SimStatus"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    iget-boolean v1, p0, Lcom/android/phone/DsaSelectSimCard;->mDialogPause:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/phone/DsaSelectSimCard;->displayDialog(I)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public softkeyRun1(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-eqz v4, :cond_1

    const-string v4, "DsaSelectSimCard"

    const-string v5, "softkeyRun1[PREVIOUS]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "DsaExtraInitial"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "extra_init_dialog"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "extra_init_dialog"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v4, "com.android.phone.DsaPhoneNumber"

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/phone/DsaSelectSimCard;->startActivity(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->finish()V

    return-void

    :cond_1
    iget-boolean v4, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v4, :cond_2

    const-string v4, "DsaSelectSimCard"

    const-string v5, "softkeyRun1[PREVIOUS]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v4, "DsaSelectSimCard"

    const-string v5, "softkeyRun1[SAVE]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SelectSimStatus"

    invoke-virtual {p0, v4, v6}, Lcom/android/phone/DsaSelectSimCard;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "SimStatus"

    iget v5, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dsa_selected_simside"

    iget v6, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public softkeyRun2(Landroid/view/View;)V
    .locals 14
    .param p1    # Landroid/view/View;

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-boolean v8, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v8, :cond_4

    :cond_0
    const-string v8, "DsaSelectSimCard"

    const-string v9, "softkeyRun2[Finish]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "dsa_main"

    invoke-virtual {p0, v8, v11}, Lcom/android/phone/DsaSelectSimCard;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v8, "SelectSimStatus"

    invoke-virtual {p0, v8, v11}, Lcom/android/phone/DsaSelectSimCard;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v8, "SimStatus"

    iget v9, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dsa_selected_simside"

    iget v10, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v8, "dsa_Initial"

    invoke-virtual {p0, v8, v11}, Lcom/android/phone/DsaSelectSimCard;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v8, "dsa_IsFirst"

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-boolean v8, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v8, :cond_1

    const-string v8, "dsa_wizad_done"

    invoke-interface {v1, v8, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dsa_is_first"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v8, "dsa_phone_number"

    invoke-virtual {p0, v8, v11}, Lcom/android/phone/DsaSelectSimCard;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v8, "dsa_phone_number_sim1"

    invoke-interface {v0, v8, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "dsa_phone_number_sim2"

    invoke-interface {v0, v8, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "DsaSelectSimCard"

    const-string v9, "dsaNumbers is not empty!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :cond_2
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPhoneNB1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mPhoneNB2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mCurrentStatus : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/DsaSelectSimCard;->dsaLog(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/DsaSelectSimCard;->dsaset:Lcom/android/phone/DsaSetting;

    iget-object v9, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    invoke-virtual {v8, v9, v10, v12}, Lcom/android/phone/DsaSetting;->DSAactivate(Ljava/util/ArrayList;IZ)V

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v8, "extra_init_dialog"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0, v12}, Lcom/android/phone/DsaSelectSimCard;->displayDialog(I)V

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dsa_init_process"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-object v8, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_3
    invoke-virtual {p0, v11}, Lcom/android/phone/DsaSelectSimCard;->displayDialog(I)V

    goto :goto_0

    :cond_4
    const-string v8, "DsaSelectSimCard"

    const-string v9, "softkeyRun2[Cancel]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->finish()V

    goto :goto_0
.end method
