.class public Lcom/android/mms/ui/BoxListAdapter;
.super Landroid/widget/CursorAdapter;
.source "BoxListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;,
        Lcom/android/mms/ui/BoxListAdapter$MessageData;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x32

.field static final COLUMN_ADDRESS:I = 0x3

.field static final COLUMN_DATE:I = 0x7

.field static final COLUMN_DATE_SENT:I = 0x8

.field static final COLUMN_GROUP_ID:I = 0xf

.field static final COLUMN_GROUP_TYPE:I = 0x10

.field static final COLUMN_HIDDEN:I = 0xe

.field static final COLUMN_ID:I = 0x1

.field static final COLUMN_LOCKED:I = 0xc

.field static final COLUMN_MMS_SUBJECT:I = 0x4

.field static final COLUMN_MMS_SUBJECT_CHARSET:I = 0x5

.field static final COLUMN_MMS_TYPE:I = 0x9

.field static final COLUMN_MSG_BOX:I = 0xb

.field static final COLUMN_MSG_TYPE:I = 0x0

.field static final COLUMN_READ:I = 0xa

.field static final COLUMN_RESERVED:I = 0xd

.field static final COLUMN_SIM_IMSI:I = 0x12

.field static final COLUMN_SIM_SLOT:I = 0x11

.field static final COLUMN_SMS_BODY:I = 0x6

.field static final COLUMN_THREAD_ID:I = 0x2

.field private static DEBUG:Z = false

.field public static LIST_FROM_TEXT_SIZE_HUGE:F = 0.0f

.field public static LIST_FROM_TEXT_SIZE_LARGE:F = 0.0f

.field public static LIST_FROM_TEXT_SIZE_NORMAL:F = 0.0f

.field public static LIST_FROM_TEXT_SIZE_SMALL:F = 0.0f

.field public static LIST_FROM_TEXT_SIZE_TINY:F = 0.0f

.field private static LIST_HEIGHT_HUGE:I = 0x0

.field private static LIST_HEIGHT_LARGE:I = 0x0

.field private static LIST_HEIGHT_NORMAL:I = 0x0

.field private static LIST_HEIGHT_SMALL:I = 0x0

.field private static LIST_HEIGHT_TINY:I = 0x0

.field private static LIST_SUBJECT_TEXT_SIZE_HUGE:F = 0.0f

.field private static LIST_SUBJECT_TEXT_SIZE_LARGE:F = 0.0f

.field private static LIST_SUBJECT_TEXT_SIZE_NORMAL:F = 0.0f

.field private static LIST_SUBJECT_TEXT_SIZE_SMALL:F = 0.0f

.field private static LIST_SUBJECT_TEXT_SIZE_TINY:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "Mms/BoxListAdapter"

.field private static mDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private final SecFeature_MESSAGE_USE_SYSTEM_FONT_SIZE:Z

.field private final changeLayoutFolderListAccordingToSystemFontsize:Z

.field private mAddress:Landroid/widget/TextView;

.field private mAvatar:Landroid/widget/QuickContactBadge;

.field private mBody:Landroid/widget/TextView;

.field private mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheckedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/BoxListAdapter$MessageData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDate:Landroid/widget/TextView;

.field private final mFactory:Landroid/view/LayoutInflater;

.field private mFontSizeIndex:I

.field private mIsMultiMode:Z

.field private mIsSplitMode:Z

.field private mListItemLayout:Landroid/widget/RelativeLayout;

.field private mListType:I

.field private mLocked:Landroid/widget/ImageView;

.field private mMessageItemCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMsg:Landroid/widget/ImageView;

.field private mMsgTypeView:Landroid/widget/ImageView;

.field private mOnContentChangedListener:Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;

.field private mRecipient:Ljava/lang/String;

.field private mRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReserved:Landroid/widget/ImageView;

.field private mSelectedMsg:Lcom/android/mms/ui/BoxListAdapter$MessageData;

.field private mSimSlot:Landroid/widget/ImageView;

.field private mStatus:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/high16 v3, 0x41900000

    const/high16 v2, 0x41800000

    const/16 v1, 0x40

    sput v2, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_TINY:F

    const v0, 0x419547ae

    sput v0, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_SMALL:F

    const v0, 0x41a547ae

    sput v0, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_NORMAL:F

    const v0, 0x41b547ae

    sput v0, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_LARGE:F

    const v0, 0x41cd47ae

    sput v0, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_HUGE:F

    const/high16 v0, 0x41400000

    sput v0, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_TINY:F

    const/high16 v0, 0x41600000

    sput v0, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_SMALL:F

    sput v2, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    sput v3, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_LARGE:F

    sput v3, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_HUGE:F

    const/16 v0, 0x2c

    sput v0, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_TINY:I

    const/16 v0, 0x32

    sput v0, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_SMALL:I

    sput v1, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_NORMAL:I

    sput v1, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_LARGE:I

    sput v1, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_HUGE:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/BoxListAdapter;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/BoxListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ZI)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mIsSplitMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mSelectedMsg:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipients:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mIsMultiMode:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mFontSizeIndex:I

    iput-boolean v3, p0, Lcom/android/mms/ui/BoxListAdapter;->changeLayoutFolderListAccordingToSystemFontsize:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListAdapter;->SecFeature_MESSAGE_USE_SYSTEM_FONT_SIZE:Z

    iput-object p1, p0, Lcom/android/mms/ui/BoxListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mFactory:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListAdapter;->initListItemSelectedMsg()V

    iput p4, p0, Lcom/android/mms/ui/BoxListAdapter;->mListType:I

    new-instance v0, Lcom/android/mms/ui/BoxListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/BoxListAdapter$1;-><init>(Lcom/android/mms/ui/BoxListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private adjustListItemLayout(Landroid/content/Context;)V
    .locals 6

    const/16 v5, 0xa

    const/16 v4, 0xe

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/BoxListAdapter;->refreshFontSize(Landroid/content/Context;)V

    const-string v0, "Mms/BoxListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustListItemLayout, mFontSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/BoxListAdapter;->mFontSizeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mFontSizeIndex:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mFontSizeIndex:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    sget v1, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_HUGE:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v4, v5, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v3, v5, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    sget v1, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_NORMAL:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 1

    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    neg-long p1, p1

    :cond_0
    return-wide p1
.end method

.method private static getMmsSubject(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c00c8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSystemFontSizeIndex(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private updateAvatar(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, p2}, Lcom/android/mms/ui/BoxListAdapter;->addRecipients(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    :cond_0
    const/4 v2, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ";"

    invoke-static {p2, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v0, Lcom/android/mms/ui/BoxListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5}, Landroid/widget/QuickContactBadge;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void

    :cond_4
    const/4 v5, 0x0

    invoke-static {p2, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    long-to-int v5, p3

    invoke-static {p1, v5}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, p1, v5}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/android/mms/ui/BoxListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, ";"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02027f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, p1, v5}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    if-ne v2, v8, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CBmessages"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02027c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_6
    sget-object v5, Lcom/android/mms/ui/BoxListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v5}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Pushmessage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020287

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/mms/data/YellowPageDataCache;->getInstance()Lcom/android/mms/data/YellowPageDataCache;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/data/YellowPageDataCache;->isYPNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/BoxListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020077

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v5, "Mms/BoxListAdapter"

    const-string v6, "=== isYpNumber, set YP thumbnail.============="

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v5, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addRecipients(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipients:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 39

    const/4 v5, 0x1

    :try_start_0
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    const/16 v5, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    const/16 v5, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v31, 0x1

    :goto_0
    const/16 v5, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const/16 v5, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const/16 v5, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const/16 v5, 0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const/16 v5, 0x10

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const/4 v12, 0x0

    const/4 v5, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    const/16 v33, -0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableCheckIMSIForSimIcon()Z

    move-result v5

    if-eqz v5, :cond_17

    const/16 v5, 0x11

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    :cond_0
    move-object/from16 v0, p2

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mRecipient:Ljava/lang/String;

    sget-boolean v5, Lcom/android/mms/ui/BoxListAdapter;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "kkahn/Mms/BoxListAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bindView(), type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",threadId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v36

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",address="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mRecipient="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/BoxListAdapter;->mRecipient:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v5, v36, v5

    if-lez v5, :cond_2

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mIsMultiMode:Z

    if-nez v5, :cond_2

    invoke-static/range {v36 .. v37}, Lcom/android/mms/data/Conversation;->removeCache(J)V

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    :cond_2
    const v5, 0x7f0b0094

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mIsMultiMode:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    move/from16 v0, v30

    int-to-long v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/mms/ui/BoxListAdapter;->checkedListContains(JLjava/lang/String;)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v15}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_1
    const v5, 0x7f0b0096

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mRecipient:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v36

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/mms/ui/BoxListAdapter;->updateAvatar(Landroid/content/Context;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mIsMultiMode:Z

    if-nez v5, :cond_1b

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v6, v5}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    const v5, 0x7f0b0098

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mMsg:Landroid/widget/ImageView;

    const-string v5, "sms"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mMsg:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_3
    const v5, 0x7f0b009a

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mLocked:Landroid/widget/ImageView;

    if-eqz v27, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mLocked:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f0b0099

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mReserved:Landroid/widget/ImageView;

    if-eqz v26, :cond_1f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mReserved:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_5
    const v5, 0x7f0b00a0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mRecipient:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Lcom/android/mms/ui/BoxListAdapter;->updateRecipients(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, 0x1

    move/from16 v0, v31

    if-ne v0, v5, :cond_8

    const-string v5, "sms"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    move/from16 v0, v29

    if-eq v0, v5, :cond_7

    :cond_5
    const-string v5, "mms"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    move/from16 v0, v29

    if-eq v0, v5, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mListType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    const/high16 v6, 0x41b00000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v5

    if-eqz v5, :cond_9

    const v5, 0x7f0b009b

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mSimSlot:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mListType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mSimSlot:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    :goto_6
    const v5, 0x7f0b009e

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mMsgTypeView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mListType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mMsgTypeView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v5, "sms"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    move/from16 v0, v29

    if-eq v0, v5, :cond_b

    :cond_a
    const-string v5, "mms"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    const/4 v5, 0x1

    move/from16 v0, v29

    if-ne v0, v5, :cond_22

    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mMsgTypeView:Landroid/widget/ImageView;

    const v6, 0x7f020280

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c
    :goto_7
    const v5, 0x7f0b009c

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mStatus:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v20, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mListType:I

    if-nez v5, :cond_26

    const-string v5, "mms"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v5, 0x82

    move/from16 v0, v28

    if-ne v0, v5, :cond_d

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v30

    int-to-long v7, v0

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v5

    const/16 v6, 0x81

    if-ne v5, v6, :cond_d

    const v35, 0x7f0c0014

    :cond_d
    :goto_8
    if-eqz v35, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mStatus:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const v5, 0x7f0c0137

    move/from16 v0, v35

    if-ne v0, v5, :cond_2d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/BoxListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mStatus:Landroid/widget/TextView;

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    const/16 v20, 0x1

    :cond_e
    const v5, 0x7f0b009d

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    const/4 v5, 0x1

    move/from16 v0, v20

    if-ne v0, v5, :cond_2e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_a
    const v5, 0x7f0b009f

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    const-string v13, ""

    const-string v5, "sms"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "wpm"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    :cond_f
    const/4 v5, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :cond_10
    :goto_b
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_32

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    invoke-static {v13}, Lcom/android/mms/ui/MessageUtils;->formatMessage_smiley(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    const v6, 0x207000f

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/4 v5, 0x1

    move/from16 v0, v31

    if-ne v0, v5, :cond_14

    const-string v5, "sms"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    move/from16 v0, v29

    if-eq v0, v5, :cond_13

    :cond_11
    const-string v5, "mms"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    move/from16 v0, v29

    if-eq v0, v5, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mListType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    const v6, 0x2070011

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_14
    const v5, 0x7f0b0097

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mSelectedMsg:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    if-eqz v5, :cond_33

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mSelectedMsg:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    move/from16 v0, v30

    int-to-long v6, v0

    move-object/from16 v0, v38

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->equals(JLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mIsMultiMode:Z

    if-nez v5, :cond_33

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mIsSplitMode:Z

    if-eqz v5, :cond_33

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f020335

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListAdapter;->changeFontSize(Landroid/content/Context;)V

    move-object/from16 v0, p2

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v5, :cond_15

    move-object/from16 v0, p2

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    iget-boolean v5, v5, Lcom/android/mms/ui/SmsViewFrame;->isNotiMsg:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_15

    check-cast p2, Lcom/android/mms/ui/BoxListViewActivity;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v5}, Lcom/android/mms/ui/SmsViewFrame;->notifiyBindingNotiViewer()V

    :cond_15
    :goto_e
    return-void

    :cond_16
    const/16 v31, 0x0

    goto/16 :goto_0

    :cond_17
    const/16 v5, 0x12

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    const/16 v34, 0x0

    :goto_f
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v5

    move/from16 v0, v34

    if-ge v0, v5, :cond_0

    invoke-static/range {v34 .. v34}, Lcom/android/mms/util/TelephonyUtils;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v25

    if-eqz v32, :cond_19

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    move/from16 v33, v34

    if-nez v34, :cond_18

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isOneSIMcardsInsertedInSlot2()Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v33, 0x1

    :cond_18
    :goto_10
    add-int/lit8 v34, v34, 0x1

    goto :goto_f

    :cond_19
    if-nez v34, :cond_18

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isOneSIMcardsInsertedInSlot2()Z

    move-result v5

    if-eqz v5, :cond_18

    add-int/lit8 v34, v34, 0x1

    invoke-static/range {v34 .. v34}, Lcom/android/mms/util/TelephonyUtils;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v25

    if-eqz v32, :cond_18

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v33, 0x1

    goto :goto_10

    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v21

    const-string v5, "Mms/BoxListAdapter"

    const-string v6, "CursorIndexOutOfBoundsException caught"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_1b
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_1c
    :try_start_1
    const-string v5, "mms"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mMsg:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v5, 0x82

    move/from16 v0, v28

    if-ne v0, v5, :cond_1d

    const-string v5, "Mms/BoxListAdapter"

    const-string v6, "[SSUK] MESSAGE_TYPE_NOTIFICATION_IND"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mMsg:Landroid/widget/ImageView;

    const v6, 0x7f0200c4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mMsg:Landroid/widget/ImageView;

    const v6, 0x7f0200c3

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_1e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mLocked:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mReserved:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    :cond_20
    const/4 v5, -0x1

    move/from16 v0, v33

    if-le v0, v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mSimSlot:Landroid/widget/ImageView;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v33

    invoke-static {v0, v1, v6, v7}, Lcom/android/mms/ui/MessageUtils;->getSimIcon(Landroid/content/Context;IIZ)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mSimSlot:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mSimSlot:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_22
    const-string v5, "sms"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v5, 0x2

    move/from16 v0, v29

    if-eq v0, v5, :cond_24

    :cond_23
    const-string v5, "mms"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x2

    move/from16 v0, v29

    if-ne v0, v5, :cond_c

    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mMsgTypeView:Landroid/widget/ImageView;

    const v6, 0x7f020281

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mMsgTypeView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_26
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mListType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    const-string v5, "sms"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v23

    move/from16 v3, v29

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/BoxListAdapter;->isFailedSms(IIII)Z

    move-result v5

    if-eqz v5, :cond_27

    const v35, 0x7f0c0137

    goto/16 :goto_8

    :cond_27
    const v35, 0x7f0c0136

    goto/16 :goto_8

    :cond_28
    const-string v5, "mms"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v22, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "msg_id="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p2

    invoke-static/range {v5 .. v11}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    if-eqz v14, :cond_29

    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_29

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v5, "err_type"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v22

    :cond_29
    if-eqz v14, :cond_2a

    :try_start_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_2a
    const/16 v5, 0xa

    move/from16 v0, v22

    if-lt v0, v5, :cond_2c

    const v35, 0x7f0c0137

    goto/16 :goto_8

    :catchall_0
    move-exception v5

    if-eqz v14, :cond_2b

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_2b
    throw v5

    :cond_2c
    const v35, 0x7f0c0136

    goto/16 :goto_8

    :cond_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mStatus:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/BoxListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_9

    :cond_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v5, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneAndServerTime()Z

    move-result v5

    if-eqz v5, :cond_2f

    const-string v5, "sms"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v5, 0x1

    move/from16 v0, v29

    if-ne v0, v5, :cond_2f

    const-wide/16 v5, 0x0

    cmp-long v5, v18, v5

    if-lez v5, :cond_2f

    move-wide/from16 v16, v18

    :goto_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRoamingTimeSchemeForCHN()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-static/range {p2 .. p2}, Lcom/android/mms/ui/MessageUtils;->displayFixedGMTInRoamingState(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v5

    if-eqz v5, :cond_30

    if-eqz v26, :cond_30

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2, v6}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringForLocal(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_2f
    const/4 v5, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    goto :goto_11

    :cond_30
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_31
    const-string v5, "mms"

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, Lcom/android/mms/ui/BoxListAdapter;->getMmsSubject(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_b

    :cond_32
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    const v6, 0x7f0c00c8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_c

    :cond_33
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_d
.end method

.method public changeFontSize(Landroid/content/Context;)V
    .locals 11

    const/4 v10, 0x7

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, -0x3

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, -0xa

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v0, 0x3

    if-ne v0, v8, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0xa

    invoke-virtual {v4, v6, v5, v6, v6}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    sget v4, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_TINY:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_TINY:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_TINY:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_TINY:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v4, -0x2

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x9

    invoke-virtual {v4, v6, v5, v6, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    sget v4, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_SMALL:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_SMALL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_SMALL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_SMALL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    if-ne v0, v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0xb

    invoke-virtual {v4, v6, v5, v6, v10}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    sget v4, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_LARGE:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_LARGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_LARGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_LARGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    if-ne v0, v9, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mListItemLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x9

    invoke-virtual {v4, v6, v5, v6, v10}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    sget v4, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_HUGE:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_HUGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_HUGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_HUGE:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/mms/ui/BoxListAdapter;->adjustListItemLayout(Landroid/content/Context;)V

    sget v4, Lcom/android/mms/ui/BoxListAdapter;->LIST_HEIGHT_NORMAL:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_FROM_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mBody:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mDate:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/android/mms/ui/BoxListAdapter;->mStatus:Landroid/widget/TextView;

    sget v5, Lcom/android/mms/ui/BoxListAdapter;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0
.end method

.method public checkedListAdd(JLjava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/android/mms/ui/BoxListAdapter$MessageData;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter$MessageData;-><init>(JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public checkedListContains(JLjava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/android/mms/ui/BoxListAdapter$MessageData;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter$MessageData;-><init>(JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public checkedListRemove(JLjava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/android/mms/ui/BoxListAdapter$MessageData;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter$MessageData;-><init>(JLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public clearCheckedList()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getBoxId(IIII)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/BoxListAdapter;->isGroupSms(II)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p4

    :cond_0
    move p4, p3

    goto :goto_0
.end method

.method public getCachedMessageItem(JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 12

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p3, p1, p2}, Lcom/android/mms/ui/BoxListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/ui/MessageItem;

    if-nez v11, :cond_4

    const/4 v1, 0x0

    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_0
    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v2

    move-object v2, v11

    :goto_1
    return-object v0

    :cond_2
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v6, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v6, v5}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    :try_start_0
    new-instance v2, Lcom/android/mms/ui/MessageItem;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListAdapter;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v3, v2, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v7

    invoke-static {v3, v7, v8}, Lcom/android/mms/ui/BoxListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :goto_3
    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v10

    move-object v2, v11

    :goto_4
    const-string v0, "BoxListActivity"

    invoke-virtual {v10}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v10

    goto :goto_4

    :cond_4
    move-object v2, v11

    goto :goto_3
.end method

.method public getCachedMessageItemWpm(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 10

    const/4 v2, 0x0

    const-string v1, "Mms/BoxListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCachedMessageItemWpm : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msgId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v8, 0x0

    if-nez v3, :cond_1

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_2
    if-nez v3, :cond_4

    :cond_3
    :goto_1
    const/4 v1, 0x1

    if-ne v8, v1, :cond_6

    const-string v1, "BoxListFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no msg id  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v1, "_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v1, v5, p2

    if-eqz v1, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v8, 0x1

    :cond_5
    if-nez v3, :cond_2

    goto :goto_1

    :cond_6
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p4, p2, p3}, Lcom/android/mms/ui/BoxListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_9

    :try_start_2
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lcom/android/mms/ui/BoxListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v3, :cond_7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v2, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1

    :catchall_1
    move-exception v1

    move-object v0, v9

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v0, v9

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_9
    move-object v0, v9

    goto :goto_2
.end method

.method public getCheckedCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedList()[Lcom/android/mms/ui/BoxListAdapter$MessageData;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/mms/ui/BoxListAdapter$MessageData;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/ui/BoxListAdapter$MessageData;

    check-cast v0, [Lcom/android/mms/ui/BoxListAdapter$MessageData;

    return-object v0
.end method

.method public getRecipientName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getRecipientString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v5, 0x3b

    const/16 v6, 0x2c

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    array-length v5, v3

    new-array v2, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    aget-object v5, v3, v1

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v5, ","

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getRecipients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipients:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSplitMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mIsSplitMode:Z

    return v0
.end method

.method public initListItemSelectedMsg()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mSelectedMsg:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/BoxListAdapter$MessageData;

    const-string v1, ""

    invoke-direct {v0, v2, v3, v1}, Lcom/android/mms/ui/BoxListAdapter$MessageData;-><init>(JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mSelectedMsg:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mSelectedMsg:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    const-string v1, ""

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->setData(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public initRecipientlistForCache()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipients:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public isCheckedMsgId(JLjava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter;->checkedListContains(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFailedSms(IIII)Z
    .locals 3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/BoxListAdapter;->getBoxId(IIII)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupSms(II)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v1, 0x7f040024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    const-string v0, "Mms/BoxListAdapter"

    const-string v1, "MessageListAdapter.notifyDataSetChanged()."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onContentChanged()V
    .locals 2

    const-string v0, "Mms/BoxListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;

    invoke-interface {v0}, Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;->onContentChanged()V

    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public refreshCheckedList()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/mms/ui/BoxListAdapter;->checkedListContains(JLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v1, Lcom/android/mms/ui/BoxListAdapter$MessageData;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/mms/ui/BoxListAdapter$MessageData;-><init>(JLjava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_4
    iput-object v5, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/BoxListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public refreshFontSize(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/android/mms/ui/BoxListAdapter;->getSystemFontSizeIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mFontSizeIndex:I

    return-void
.end method

.method public resetView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mAvatar:Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    return-void
.end method

.method public setListItemSelected(JLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mSelectedMsg:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/BoxListAdapter$MessageData;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter$MessageData;-><init>(JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mSelectedMsg:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListAdapter;->mSelectedMsg:Lcom/android/mms/ui/BoxListAdapter$MessageData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/BoxListAdapter$MessageData;->setData(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public setListType(I)V
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/BoxListAdapter;->mListType:I

    return-void
.end method

.method public setMultiMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListAdapter;->mIsMultiMode:Z

    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/BoxListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/BoxListAdapter$OnContentChangedListener;

    return-void
.end method

.method public setSplitMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListAdapter;->mIsSplitMode:Z

    return-void
.end method

.method public updateRecipients(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipient:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipient:Ljava/lang/String;

    const-string v2, "CBmessages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    const v2, 0x7f0c0100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipient:Ljava/lang/String;

    const-string v2, "Pushmessage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    const v2, 0x7f0c0163

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipient:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isVZWHiddenContact(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    const-string v2, "Verizon Global Support"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipient:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListAdapter;->getRecipientString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListAdapter;->mRecipient:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/BoxListAdapter;->mAddress:Landroid/widget/TextView;

    const v2, 0x7f0c000b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
