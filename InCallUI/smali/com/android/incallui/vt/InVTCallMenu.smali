.class public abstract Lcom/android/incallui/vt/InVTCallMenu;
.super Lcom/android/incallui/InCallMenu;
.source "InVTCallMenu.java"


# instance fields
.field private final DIALOG_FOR_RECORDING:I

.field private final DIALOG_OUTGOING_IMAGE:I

.field private final DIALOG_SNA_INFO:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mIsSelectedImage:Z

.field protected mIsTabletDevice:Z

.field protected mMenuSelected:I

.field private mOutgoingImageDialog:Landroid/app/AlertDialog;

.field private mOutgoingImageList:[Ljava/lang/String;

.field private mVideoRecordFailDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallMenu;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/vt/InVTCallMenu;->DIALOG_OUTGOING_IMAGE:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/incallui/vt/InVTCallMenu;->DIALOG_SNA_INFO:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/incallui/vt/InVTCallMenu;->DIALOG_FOR_RECORDING:I

    iput-boolean v1, p0, Lcom/android/incallui/vt/InVTCallMenu;->mIsTabletDevice:Z

    iput-boolean v1, p0, Lcom/android/incallui/vt/InVTCallMenu;->mIsSelectedImage:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/vt/InVTCallMenu;->mMenuSelected:I

    const-string v0, "InVTCallMenu constructor..."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/vt/InVTCallMenu;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/vt/InVTCallMenu;->mVideoRecordFailDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/incallui/vt/InVTCallMenu;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/vt/InVTCallMenu;->mVideoRecordFailDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/vt/InVTCallMenu;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/vt/InVTCallMenu;->mIsSelectedImage:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/incallui/vt/InVTCallMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/vt/InVTCallMenu;->mIsSelectedImage:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/vt/InVTCallMenu;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/vt/InVTCallMenu;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/vt/InVTCallMenu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private prepareOptionMenuForEasyMode(Landroid/view/Menu;)Z
    .locals 7

    const v6, 0x7f0e0358

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "incallvtmenu :: prepareOptionMenuForEasyMode()...SUPPORT_EASY_MODE"

    invoke-virtual {p0, v3}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_1
    iget-boolean v3, p0, Lcom/android/incallui/vt/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v3, :cond_0

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/android/incallui/vt/InVTCallMenu;->mMenuSelected:I

    packed-switch v3, :pswitch_data_1

    :goto_2
    return v5

    :pswitch_2
    invoke-interface {p1, v6, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_2

    :pswitch_3
    const v3, 0x7f0e032d

    invoke-interface {p1, v3, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v6, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x7f0e0338
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private showDialog(I)V
    .locals 12

    iget-object v8, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v8, "ims_ui_for_kor"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "common_volte_in"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "common_volte_hk"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPSVideoCall()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/vt/InVTCallMenu;->isShowMe()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090193

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    iput-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    :goto_1
    const v7, 0x7f09016e

    :goto_2
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    new-instance v10, Lcom/android/incallui/vt/InVTCallMenu$1;

    invoke-direct {v10, p0}, Lcom/android/incallui/vt/InVTCallMenu$1;-><init>(Lcom/android/incallui/vt/InVTCallMenu;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    iget-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8, v7}, Landroid/app/Dialog;->setTitle(I)V

    iget-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_1
    const-string v8, "ims_video_outgoing_image_picture"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v4, :cond_2

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090193

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090194

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    iput-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090193

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090194

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090192

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    iput-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090193

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    iput-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090193

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090192

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    iput-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090193

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    iput-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const-string v8, "volte_jpn_ui"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090193

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090191

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090192

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    iput-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    const v7, 0x7f090153

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/vt/VideoCallManager;->isNearEndRecord()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090193

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090191

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090192

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090158

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    iput-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    const v7, 0x7f090153

    goto/16 :goto_2

    :cond_8
    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090193

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090191

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090192

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f090158

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget-object v10, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v11, 0x7f09014c

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    iput-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageList:[Ljava/lang/String;

    const v7, 0x7f090153

    goto/16 :goto_2

    :sswitch_1
    iget-object v8, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    const v9, 0x7f04001e

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v8, 0x1020001

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v8, Lcom/android/incallui/vt/InVTCallMenu$2;

    invoke-direct {v8, p0, v5}, Lcom/android/incallui/vt/InVTCallMenu$2;-><init>(Lcom/android/incallui/vt/InVTCallMenu;Landroid/view/View;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v8, 0x7f090153

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f090029

    new-instance v10, Lcom/android/incallui/vt/InVTCallMenu$3;

    invoke-direct {v10, p0}, Lcom/android/incallui/vt/InVTCallMenu$3;-><init>(Lcom/android/incallui/vt/InVTCallMenu;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mDialog:Landroid/app/AlertDialog;

    :cond_9
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mDialog:Landroid/app/AlertDialog;

    iget-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :sswitch_2
    iget-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mVideoRecordFailDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mVideoRecordFailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mVideoRecordFailDialog:Landroid/app/AlertDialog;

    :cond_a
    new-instance v6, Lcom/android/incallui/vt/InVTCallMenu$4;

    invoke-direct {v6, p0}, Lcom/android/incallui/vt/InVTCallMenu$4;-><init>(Lcom/android/incallui/vt/InVTCallMenu;)V

    new-instance v1, Lcom/android/incallui/vt/InVTCallMenu$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/vt/InVTCallMenu$5;-><init>(Lcom/android/incallui/vt/InVTCallMenu;)V

    new-instance v3, Lcom/android/incallui/vt/InVTCallMenu$6;

    invoke-direct {v3, p0}, Lcom/android/incallui/vt/InVTCallMenu$6;-><init>(Lcom/android/incallui/vt/InVTCallMenu;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/incallui/InCallMenu;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x1010355

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f09036c

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f09036d

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f090029

    invoke-virtual {v8, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f09002a

    invoke-virtual {v8, v9, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mVideoRecordFailDialog:Landroid/app/AlertDialog;

    iget-object v8, p0, Lcom/android/incallui/vt/InVTCallMenu;->mVideoRecordFailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public dismissDialogs()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/vt/InVTCallMenu;->mOutgoingImageDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/vt/InVTCallMenu;->mVideoRecordFailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/vt/InVTCallMenu;->mVideoRecordFailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/vt/InVTCallMenu;->mVideoRecordFailDialog:Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/vt/InVTCallMenu;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/vt/InVTCallMenu;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/android/incallui/vt/InVTCallMenu;->mDialog:Landroid/app/AlertDialog;

    :cond_2
    return-void
.end method

.method protected getPreviewEffectState()Lcom/android/incallui/vt/PreviewEffectState;
    .locals 1

    invoke-static {}, Lcom/android/incallui/vt/PreviewEffectState;->getInstance()Lcom/android/incallui/vt/PreviewEffectState;

    move-result-object v0

    return-object v0
.end method

.method isDialerOpened()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFarEndRecord()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isFarEndRecord()Z

    move-result v0

    return v0
.end method

.method isNearEndRecord()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isNearEndRecord()Z

    move-result v0

    return v0
.end method

.method isShowMe()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/vt/VideoCallManager;->isShowMe()Z

    move-result v0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "InVTCallMenu"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "InVTCallMenu"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method abstract mdmGetAllowCamera()Z
.end method

.method abstract mdmIsCameraEnabled(Z)Z
.end method

.method protected optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- optionsItemSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  title: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "optionsItemSelected:  unexpected View ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (MenuItem = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/InCallMenu;->optionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallButtonPresenter;->dialpadClicked(Z)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->toggleBluetooth()V

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x64

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/InVTCallMenu;->showDialog(I)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    sget v2, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v1

    sget v2, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0332
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 14

    const v13, 0x7f0e0358

    const v12, 0x7f0e033a

    const v11, 0x7f0e0339

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v7, "prepareOptionsMenu()..."

    invoke-virtual {p0, v7}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/vt/InVTCallMenu;->prepareOptionMenuForEasyMode(Landroid/view/Menu;)Z

    move-result v6

    :goto_0
    return v6

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v7

    if-ge v0, v7, :cond_d

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_2
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v7, "no_receiver_in_call"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "vt_cmcc_operator_open_close_camera"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const v7, 0x7f0e032e

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v7, 0x7f0e032f

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/incallui/vt/InVTCallMenu;->isShowMe()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "Adding HIDE Me to Menu"

    invoke-virtual {p0, v7}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/incallui/vt/InVTCallMenu;->mdmGetAllowCamera()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0, v9}, Lcom/android/incallui/vt/InVTCallMenu;->mdmIsCameraEnabled(Z)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/incallui/vt/InVTCallMenu;->isNearEndRecord()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_4
    const-string v7, "Adding SHOW Me to Menu"

    invoke-virtual {p0, v7}, Lcom/android/incallui/vt/InVTCallMenu;->log(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/android/incallui/vt/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/vt/InVTCallMenu;->isDialerOpened()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/vt/InVTCallMenu;->isFarEndRecord()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_6
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    :cond_7
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    :sswitch_2
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v10

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/vt/VideoCallManager;->isNearEndRecord()Z

    move-result v7

    if-nez v7, :cond_8

    move v7, v8

    :goto_4
    invoke-interface {v10, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_8
    move v7, v9

    goto :goto_4

    :sswitch_3
    iget-boolean v7, p0, Lcom/android/incallui/vt/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v7, :cond_1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :sswitch_4
    iget-boolean v7, p0, Lcom/android/incallui/vt/InVTCallMenu;->mIsTabletDevice:Z

    if-nez v7, :cond_1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v7

    sget v10, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne v7, v10, :cond_9

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_9
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :sswitch_5
    const-string v7, "kor_qc_cs_vt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "ims_ui_for_kor"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "vt_theme_feature_support"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/vt/InVTCallMenu;->getPreviewEffectState()Lcom/android/incallui/vt/PreviewEffectState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/vt/PreviewEffectState;->isShowingEmotion()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_a
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/incallui/vt/InVTCallMenu;->isShowMe()Z

    move-result v10

    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :sswitch_6
    const-string v7, "kor_qc_cs_vt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "ims_ui_for_kor"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "vt_theme_feature_support"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/vt/InVTCallMenu;->getPreviewEffectState()Lcom/android/incallui/vt/PreviewEffectState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/vt/PreviewEffectState;->isShowingTheme()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_b
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/incallui/vt/InVTCallMenu;->isShowMe()Z

    move-result v10

    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :sswitch_7
    const-string v7, "kor_qc_cs_vt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "ims_ui_for_kor"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "vt_theme_feature_support"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const v7, 0x7f0e0351

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v7, 0x7f0e0352

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/vt/InVTCallMenu;->getPreviewEffectState()Lcom/android/incallui/vt/PreviewEffectState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/vt/PreviewEffectState;->isShowingCartoonView()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/incallui/vt/InVTCallMenu;->isShowMe()Z

    move-result v7

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_c
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/incallui/vt/InVTCallMenu;->isShowMe()Z

    move-result v7

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_d
    iget v7, p0, Lcom/android/incallui/vt/InVTCallMenu;->mMenuSelected:I

    packed-switch v7, :pswitch_data_0

    :goto_5
    move v6, v8

    goto/16 :goto_0

    :pswitch_0
    invoke-interface {p1, v13, v9}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_5

    :pswitch_1
    const v7, 0x7f0e032d

    invoke-interface {p1, v7, v9}, Landroid/view/Menu;->setGroupVisible(IZ)V

    invoke-interface {p1, v13, v9}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_5

    :sswitch_data_0
    .sparse-switch
        0x7f0e032e -> :sswitch_0
        0x7f0e032f -> :sswitch_1
        0x7f0e0332 -> :sswitch_2
        0x7f0e0338 -> :sswitch_3
        0x7f0e0339 -> :sswitch_0
        0x7f0e033a -> :sswitch_4
        0x7f0e033b -> :sswitch_0
        0x7f0e033c -> :sswitch_0
        0x7f0e034f -> :sswitch_5
        0x7f0e0350 -> :sswitch_6
        0x7f0e0351 -> :sswitch_0
        0x7f0e0352 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
