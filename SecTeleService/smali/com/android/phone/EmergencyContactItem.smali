.class public Lcom/android/phone/EmergencyContactItem;
.super Landroid/widget/FrameLayout;
.source "EmergencyContactItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EmergencyContactItem$9;,
        Lcom/android/phone/EmergencyContactItem$ContactImageAsyncQuery;
    }
.end annotation


# instance fields
.field private final INVALID_ID:J

.field private final INVALID_LONG_ID:J

.field private final LOG_TAG:Ljava/lang/String;

.field private defaultPhotoIdArray:[I

.field private mCheckBox:Landroid/view/View;

.field private mDeletable:Z

.field public mEmergencyCallDialog:Landroid/app/AlertDialog;

.field private mId:J

.field private mImageButton:Landroid/widget/ImageView;

.field private mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

.field private mName:Ljava/lang/String;

.field private mNameView:Landroid/widget/TextView;

.field private mNumber:Ljava/lang/String;

.field public mParent:Lcom/android/phone/EmergencyContactItemContainer;

.field private mPhoto:Landroid/graphics/Bitmap;

.field private mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const-wide/16 v1, -0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "EmergencyContactItem"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->LOG_TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-wide v1, p0, Lcom/android/phone/EmergencyContactItem;->INVALID_LONG_ID:J

    iput-wide v1, p0, Lcom/android/phone/EmergencyContactItem;->INVALID_ID:J

    iput-wide v1, p0, Lcom/android/phone/EmergencyContactItem;->mId:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/EmergencyContactItem;->mDeletable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->defaultPhotoIdArray:[I

    return-void

    :array_0
    .array-data 4
        0x7f020180
        0x7f020181
        0x7f020182
        0x7f020183
        0x7f020184
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const-wide/16 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "EmergencyContactItem"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->LOG_TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-wide v1, p0, Lcom/android/phone/EmergencyContactItem;->INVALID_LONG_ID:J

    iput-wide v1, p0, Lcom/android/phone/EmergencyContactItem;->INVALID_ID:J

    iput-wide v1, p0, Lcom/android/phone/EmergencyContactItem;->mId:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/EmergencyContactItem;->mDeletable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->defaultPhotoIdArray:[I

    return-void

    :array_0
    .array-data 4
        0x7f020180
        0x7f020181
        0x7f020182
        0x7f020183
        0x7f020184
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const-wide/16 v1, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "EmergencyContactItem"

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->LOG_TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_CONTACT:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-wide v1, p0, Lcom/android/phone/EmergencyContactItem;->INVALID_LONG_ID:J

    iput-wide v1, p0, Lcom/android/phone/EmergencyContactItem;->INVALID_ID:J

    iput-wide v1, p0, Lcom/android/phone/EmergencyContactItem;->mId:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/EmergencyContactItem;->mDeletable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->defaultPhotoIdArray:[I

    return-void

    :array_0
    .array-data 4
        0x7f020180
        0x7f020181
        0x7f020182
        0x7f020183
        0x7f020184
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/phone/EmergencyContactItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0    # Lcom/android/phone/EmergencyContactItem;
    .param p1    # Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/phone/EmergencyContactItem;->mPhoto:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/EmergencyContactItem;)V
    .locals 0
    .param p0    # Lcom/android/phone/EmergencyContactItem;

    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->updateContactItem()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/EmergencyContactItem;)V
    .locals 0
    .param p0    # Lcom/android/phone/EmergencyContactItem;

    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->placeCall()V

    return-void
.end method

.method private init(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/EmergencyContactItem;->mId:J

    iput-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mPhoto:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    return-void
.end method

.method private placeCall()V
    .locals 6

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    sget-object v3, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_SERVICE:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyDialer;->removeLockScreenAnimationEffects(Z)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyDialer;->showDialog(I)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyDialer;->removeLockScreenAnimationEffects(Z)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "emergency_contact_item"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "SKTRADDialOption"

    const-string v3, "korea"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setPositiveButtonEnabled(Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 2
    .param p1    # Landroid/app/AlertDialog;
    .param p2    # Landroid/widget/EditText;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v1, Lcom/android/phone/EmergencyContactItem$8;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/phone/EmergencyContactItem$8;-><init>(Lcom/android/phone/EmergencyContactItem;Landroid/widget/Button;Landroid/widget/EditText;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateContactItem()V
    .locals 2

    const-string v0, "EmergencyContactItem"

    const-string v1, "updateContactItem : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->updateNormalScreen()V

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    sget-object v1, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->REMOVE:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->updateRemoveScreen()V

    :cond_0
    return-void
.end method

.method private updateNormalScreen()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyContactItem;->setEnabled(Z)V

    sget-object v0, Lcom/android/phone/EmergencyContactItem$9;->$SwitchMap$com$android$phone$EmergencyContactItemContainer$ItemType:[I

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    invoke-virtual {v1}, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    const v1, 0x7f0908d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageView;

    const v1, 0x7f020185

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageView;

    const v1, 0x7f020186

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageView;

    const v1, 0x7f020175

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyContactItem;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getDefaultImage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateRemoveScreen()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/EmergencyContactItem;->mDeletable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyContactItem;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addEmergencyContact(I)V
    .locals 5
    .param p1    # I

    const-string v2, "EmergencyContactItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addEmergencyContact : position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyDialer;->removeLockScreenAnimationEffects(Z)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_ICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "emergency_contact_postion"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x40800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    iget-object v2, v2, Lcom/android/phone/EmergencyContactItemContainer;->mEmergencyDialer:Lcom/android/phone/EmergencyDialer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyDialer;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public addEmergencyService()V
    .locals 8

    const-string v4, "EmergencyContactItem"

    const-string v5, "addEmergencyService : "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/phone/EmergencyContactItem$5;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/phone/EmergencyContactItem$5;-><init>(Lcom/android/phone/EmergencyContactItem;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0908d9

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090025

    new-instance v6, Lcom/android/phone/EmergencyContactItem$7;

    invoke-direct {v6, p0, v3}, Lcom/android/phone/EmergencyContactItem$7;-><init>(Lcom/android/phone/EmergencyContactItem;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090028

    new-instance v6, Lcom/android/phone/EmergencyContactItem$6;

    invoke-direct {v6, p0}, Lcom/android/phone/EmergencyContactItem$6;-><init>(Lcom/android/phone/EmergencyContactItem;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-direct {p0, v1, v3}, Lcom/android/phone/EmergencyContactItem;->setPositiveButtonEnabled(Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    return-void
.end method

.method public getDefaultImage()I
    .locals 5

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/phone/EmergencyContactItem;->mId:J

    const-wide/16 v3, 0x5

    rem-long/2addr v1, v3

    long-to-int v0, v1

    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->defaultPhotoIdArray:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->defaultPhotoIdArray:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public getItemId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/phone/EmergencyContactItem;->mId:J

    return-wide v0
.end method

.method public isChecked()Z
    .locals 2

    iget-object v1, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "EmergencyContactItem"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a00e5

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mNameView:Landroid/widget/TextView;

    const v0, 0x7f0a00e4

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mImageButton:Landroid/widget/ImageView;

    const v0, 0x7f0a00e6

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyContactItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    new-instance v1, Lcom/android/phone/EmergencyContactItem$1;

    invoke-direct {v1, p0}, Lcom/android/phone/EmergencyContactItem$1;-><init>(Lcom/android/phone/EmergencyContactItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public removeEmergencyContact(Z)V
    .locals 7
    .param p1    # Z

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/android/phone/EmergencyContactItem;->mId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v3, "content://com.android.contacts/emergency"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/phone/EmergencyContactItem;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyContactItem;->init(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    sget-object v0, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->updateNormalScreen()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method public setItem(Lcom/android/phone/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1    # Lcom/android/phone/EmergencyContactItemContainer$ItemType;
    .param p2    # J
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # I

    const/4 v6, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    iput-wide p2, p0, Lcom/android/phone/EmergencyContactItem;->mId:J

    iput-object p4, p0, Lcom/android/phone/EmergencyContactItem;->mName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    const/4 v0, -0x1

    if-eq p6, v0, :cond_0

    new-instance v0, Lcom/android/phone/EmergencyContactItem$ContactImageAsyncQuery;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/phone/EmergencyContactItem$ContactImageAsyncQuery;-><init>(Lcom/android/phone/EmergencyContactItem;Landroid/content/ContentResolver;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "data15"

    aput-object v5, v4, v1

    const-string v5, "_id=?"

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/EmergencyContactItem$ContactImageAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setItem(Lcom/android/phone/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1    # Lcom/android/phone/EmergencyContactItemContainer$ItemType;
    .param p2    # J
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # I
    .param p7    # Z

    invoke-virtual/range {p0 .. p6}, Lcom/android/phone/EmergencyContactItem;->setItem(Lcom/android/phone/EmergencyContactItemContainer$ItemType;JLjava/lang/String;Ljava/lang/String;I)V

    iput-boolean p7, p0, Lcom/android/phone/EmergencyContactItem;->mDeletable:Z

    return-void
.end method

.method public setParent(Lcom/android/phone/EmergencyContactItemContainer;)V
    .locals 0
    .param p1    # Lcom/android/phone/EmergencyContactItemContainer;

    iput-object p1, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    return-void
.end method

.method public updateContactItem(Lcom/android/phone/EmergencyContactItemContainer$ScreenType;)V
    .locals 0
    .param p1    # Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    iput-object p1, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->updateContactItem()V

    return-void
.end method

.method public updateEmergencyContact(I)V
    .locals 6
    .param p1    # I

    const/4 v4, 0x1

    const-string v2, "EmergencyContactItem"

    const-string v3, "updateEmergencyContact..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/phone/EmergencyContactItem$9;->$SwitchMap$com$android$phone$EmergencyContactItemContainer$ScreenType:[I

    iget-object v3, p0, Lcom/android/phone/EmergencyContactItem;->mScreenType:Lcom/android/phone/EmergencyContactItemContainer$ScreenType;

    invoke-virtual {v3}, Lcom/android/phone/EmergencyContactItemContainer$ScreenType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "emergency_contacts_item_popup"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09054c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/EmergencyContactItem;->mNumber:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090025

    new-instance v3, Lcom/android/phone/EmergencyContactItem$2;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyContactItem$2;-><init>(Lcom/android/phone/EmergencyContactItem;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f090028

    new-instance v3, Lcom/android/phone/EmergencyContactItem$3;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyContactItem$3;-><init>(Lcom/android/phone/EmergencyContactItem;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/phone/EmergencyContactItem$4;

    invoke-direct {v2, p0}, Lcom/android/phone/EmergencyContactItem$4;-><init>(Lcom/android/phone/EmergencyContactItem;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    const v3, 0x7f09054b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mEmergencyCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/EmergencyContactItem;->placeCall()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mItemType:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    sget-object v3, Lcom/android/phone/EmergencyContactItemContainer$ItemType;->EMERGENCY_SERVICE:Lcom/android/phone/EmergencyContactItemContainer$ItemType;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/EmergencyContactItem;->addEmergencyService()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/phone/EmergencyContactItem;->addEmergencyContact(I)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->toggle()V

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mCheckBox:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    iget-object v2, p0, Lcom/android/phone/EmergencyContactItem;->mParent:Lcom/android/phone/EmergencyContactItemContainer;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyContactItemContainer;->notifyCheckChanged()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
