.class public Lcom/android/mms/ui/ReservationMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ReservationMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field public static final CACHE_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "Mms/ReservationMessageListAdapter"


# instance fields
.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheckedMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedWpmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mDateView:Landroid/widget/TextView;

.field private final mFactory:Landroid/view/LayoutInflater;

.field private mFontSizeIndex:I

.field private mFromView:Landroid/widget/TextView;

.field private mIsAnimationEnable:Z

.field public mIsMsgMultiMode:Z

.field private mListHoverController:Lcom/android/mms/hover/ListHoverController;

.field private final mMessageItemCache:Ljava/util/LinkedHashMap;
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

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field mOnContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mSubjectView:Landroid/widget/TextView;

.field private m_LayoutInflater:Landroid/view/LayoutInflater;

.field private m_nViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFontSizeIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mIsAnimationEnable:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mIsMsgMultiMode:Z

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->m_nViewResourceId:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/mms/ui/ReservationMessageListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/ReservationMessageListAdapter$1;-><init>(Lcom/android/mms/ui/ReservationMessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    if-nez p2, :cond_0

    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->setFontSize()V

    new-instance v0, Lcom/android/mms/hover/ListHoverController;

    invoke-direct {v0, p1}, Lcom/android/mms/hover/ListHoverController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    return-void

    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method private formatContactListString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 5

    const v4, 0x7f0c013b

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v2, ", "

    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CBmessages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0100

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v2, "Pushmessage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0163

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v2, "Unknown address"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isVZWHiddenContact(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "Verizon Global Support"

    goto/16 :goto_0
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

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateAvatarView(Lcom/android/mms/data/ContactList;J)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v8}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-ne v5, v10, :cond_6

    invoke-virtual {p1, v9}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    long-to-int v7, p2

    invoke-static {v6, v7}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CBmessages"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v8}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02027c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    const-string v2, ""

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->formatContactListString(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v2}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v9}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    iget-boolean v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mIsMsgMultiMode:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v9}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v8}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    const-string v5, "Pushmessage"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v8}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020287

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v4, v10}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v4, v10}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/mms/data/YellowPageDataCache;->getInstance()Lcom/android/mms/data/YellowPageDataCache;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/data/YellowPageDataCache;->isYPNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020077

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v5, "Mms/ReservationMessageListAdapter"

    const-string v6, "=== isYpNumber, set YP thumbnail.============="

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v8}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    long-to-int v6, p2

    invoke-static {v5, v6}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02027f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v5, v10}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    iget-object v5, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 23

    move-object/from16 v16, p1

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->m_LayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->m_nViewResourceId:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    :cond_0
    if-nez v16, :cond_1

    const-string v17, "Mms/ReservationMessageListAdapter"

    const-string v18, "view object is null even if it has been set twice"

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v17

    if-nez v17, :cond_2

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    :cond_2
    const v17, 0x7f0b004a

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFromView:Landroid/widget/TextView;

    const v17, 0x7f0b006e

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ReservationMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    const v17, 0x7f0b0151

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDateView:Landroid/widget/TextView;

    const v17, 0x7f0b0049

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ReservationMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    const v17, 0x7f0b0094

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v17, 0x7f0b014e

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ReservationMessageListAdapter;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v6, v7, v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v9

    if-nez v9, :cond_3

    const-string v17, "Mms/ReservationMessageListAdapter"

    const-string v18, "msgItem is null, bind view fail"

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/4 v11, 0x0

    const-string v17, "im"

    iget-object v0, v9, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    iget-boolean v0, v9, Lcom/android/mms/ui/MessageItem;->mIsGroupChatMessage:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getFreeMessageSessionId()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/ui/MessageUtils;->getRecipientIdsBySessionId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_1
    if-nez v11, :cond_4

    const-string v11, ""

    :cond_4
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v11, v0}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12}, Lcom/android/mms/data/ContactList;->size()I

    move-result v17

    if-nez v17, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c013b

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFromView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v17, "mms"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    iget-object v15, v9, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_d

    iget-object v0, v9, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c000c

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string v18, "\n"

    const-string v19, " "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnFreeMessageMessageType:I

    move/from16 v17, v0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/16 v17, 0x67

    move/from16 v0, v17

    if-lt v8, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x7f0c056a

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDateView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    iget-wide v0, v9, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRoamingTimeSchemeForCHN()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-static/range {p2 .. p2}, Lcom/android/mms/ui/MessageUtils;->displayFixedGMTInRoamingState(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mDateView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    iget-wide v0, v9, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-wide/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampStringForLocal(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v17

    if-eqz v17, :cond_13

    const-string v17, "Mms/ReservationMessageListAdapter"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFontSizeIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFromView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, p1

    move-object/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/DraftMessageListAdapter;->changeFontSize7Step(Ljava/lang/String;Landroid/content/Context;ILandroid/view/View;Landroid/widget/TextView;)V

    :goto_5
    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v12, v1, v2}, Lcom/android/mms/ui/ReservationMessageListAdapter;->updateAvatarView(Lcom/android/mms/data/ContactList;J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/mms/hover/ListHoverController;->setHoverPopupStyle(Landroid/view/View;)V

    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v14}, Lcom/android/mms/ui/ReservationMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v18

    invoke-static/range {v17 .. v19}, Lcom/android/mms/ui/MessageUtils;->getRecipientIdsByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c000b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v12}, Lcom/android/mms/data/ContactList;->size()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_b

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d0003

    invoke-virtual {v12}, Lcom/android/mms/data/ContactList;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    const/16 v21, 0x1

    invoke-virtual {v12}, Lcom/android/mms/data/ContactList;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    :cond_b
    const-string v17, ", "

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c013b

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c000b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    :cond_d
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_e

    iget-object v15, v9, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    goto/16 :goto_3

    :cond_e
    iget-object v0, v9, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_f

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v9, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    :cond_f
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v9, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v9, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    :cond_10
    iget-object v15, v9, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mSubjectView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_13
    const-string v17, "Mms/ReservationMessageListAdapter"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFontSizeIndex:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFromView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, p1

    move-object/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/DraftMessageListAdapter;->changeFontSize(Ljava/lang/String;Landroid/content/Context;ILandroid/view/View;Landroid/widget/TextView;)V

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mRootLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public clearCheckedList()V
    .locals 2

    const-string v0, "Mms/ReservationMessageListAdapter"

    const-string v1, "clearCheckedList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 10

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;

    if-nez v9, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/android/mms/ui/ReservationMessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v8

    move-object v0, v9

    :goto_1
    const-string v1, "Mms/ReservationMessageListAdapter"

    invoke-virtual {v8}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v8

    goto :goto_1

    :cond_0
    move-object v0, v9

    goto :goto_0
.end method

.method public getCheckedCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isCheckedMessageId(JLjava/lang/String;)Z
    .locals 2

    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFactory:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->m_nViewResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    const-string v0, "Mms/ReservationMessageListAdapter"

    const-string v1, "onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/ReservationMessageListAdapter;)V

    :cond_0
    return-void
.end method

.method public refreshCheckList()Z
    .locals 17

    const-string v14, "Mms/ReservationMessageListAdapter"

    const-string v15, "refreshCheckList()"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/4 v10, 0x0

    if-nez v1, :cond_0

    move v11, v10

    :goto_0
    return v11

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-nez v14, :cond_1

    move v11, v10

    goto :goto_0

    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v4, -0x1

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v14, v14, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "Mms/ReservationMessageListAdapter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "refreshCheckList(): msgListCurrent.size()="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v12, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v14, "Mms/ReservationMessageListAdapter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "refreshCheckList(): 1. sms chedk list : removed msgIdTmp ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v14, "Mms/ReservationMessageListAdapter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "refreshCheckList(): 2. mms chedk list : removed msgIdTmp ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string v14, "Mms/ReservationMessageListAdapter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "refreshCheckList(): 3. wpm chedk list : removed msgIdTmp ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    goto :goto_6

    :cond_8
    move v11, v10

    goto/16 :goto_0
.end method

.method public refreshFontSize()V
    .locals 1

    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->getFontSizeIndexForUi()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFontSizeIndex:I

    return-void
.end method

.method public resetCheckedList()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mIsAnimationEnable:Z

    return-void
.end method

.method public setCheckedItem(JLjava/lang/String;Z)Z
    .locals 2

    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setFontSize()V
    .locals 1

    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->getFontSizeIndexForUi()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mFontSizeIndex:I

    return-void
.end method

.method public setMessageListMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mIsMsgMultiMode:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mIsMsgMultiMode:Z

    invoke-virtual {p0}, Lcom/android/mms/ui/ReservationMessageListAdapter;->resetCheckedList()V

    goto :goto_0
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;

    return-void
.end method
