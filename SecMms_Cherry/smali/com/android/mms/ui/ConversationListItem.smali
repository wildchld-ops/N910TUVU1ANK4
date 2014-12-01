.class public Lcom/android/mms/ui/ConversationListItem;
.super Landroid/widget/RelativeLayout;
.source "ConversationListItem.java"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Lcom/android/mms/data/Contact$UpdateListener;


# static fields
.field public static LIST_HEIGHT_HUGE:I = 0x0

.field public static LIST_HEIGHT_LARGE:I = 0x0

.field public static LIST_HEIGHT_NORMAL:I = 0x0

.field public static LIST_HEIGHT_SMALL:I = 0x0

.field public static LIST_HEIGHT_TINY:I = 0x0

.field public static LIST_SUBJECT_TEXT_SIZE_HUGE:F = 0.0f

.field public static LIST_SUBJECT_TEXT_SIZE_LARGE:F = 0.0f

.field public static LIST_SUBJECT_TEXT_SIZE_NORMAL:F = 0.0f

.field public static LIST_SUBJECT_TEXT_SIZE_SMALL:F = 0.0f

.field public static LIST_SUBJECT_TEXT_SIZE_TINY:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "Mms/ConversationListItem"


# instance fields
.field private mAvatarClickable:Z

.field private mAvatarView:Landroid/widget/QuickContactBadge;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mContext:Landroid/content/Context;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDateView:Landroid/widget/TextView;

.field private mFontSize:I

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHoverEnterTime:J

.field private mIsSplitMode:Z

.field private mOldFontSize:I

.field private mStatusView:Landroid/widget/TextView;

.field private mSubjectView:Landroid/widget/TextView;

.field private mUnreadCount:Landroid/widget/TextView;

.field private subjectViewHpw:Landroid/widget/HoverPopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v2, 0x41900000

    const/16 v1, 0x40

    const/high16 v0, 0x41400000

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_TINY:F

    const/high16 v0, 0x41600000

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_SMALL:F

    const/high16 v0, 0x41800000

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_NORMAL:F

    sput v2, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_LARGE:F

    sput v2, Lcom/android/mms/ui/ConversationListItem;->LIST_SUBJECT_TEXT_SIZE_HUGE:F

    const/16 v0, 0x2c

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_TINY:I

    const/16 v0, 0x32

    sput v0, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_SMALL:I

    sput v1, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_NORMAL:I

    sput v1, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_LARGE:I

    sput v1, Lcom/android/mms/ui/ConversationListItem;->LIST_HEIGHT_HUGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsSplitMode:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarClickable:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHoverEnterTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsSplitMode:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarClickable:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHoverEnterTime:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListItem;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationListItem;)Lcom/android/mms/data/Conversation;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationListItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateFromView()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationListItem;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/ConversationListItem;->mHoverEnterTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/ConversationListItem;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/ui/ConversationListItem;->mHoverEnterTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/HoverPopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->subjectViewHpw:Landroid/widget/HoverPopupWindow;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/ConversationListItem;Landroid/widget/HoverPopupWindow;)Landroid/widget/HoverPopupWindow;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListItem;->subjectViewHpw:Landroid/widget/HoverPopupWindow;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationListItem;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationListItem;Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationListItem;->makeHoverText(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method private formatMessage()Ljava/lang/String;
    .locals 12

    const v7, 0x7f0c013b

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getAlias()Ljava/lang/String;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v5, v6}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-ne v6, v11, :cond_2

    invoke-virtual {v5, v10}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/data/Contact;

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->hasName()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c055a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-ne v6, v11, :cond_a

    invoke-virtual {v5, v10}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/data/Contact;

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v6, "CBmessages"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0100

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    const-string v6, "Pushmessage"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0163

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_8
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isVZWHiddenContact(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v2, "Verizon Global Support"

    goto :goto_1

    :cond_9
    const-string v6, "Unknown address"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-lt v6, v7, :cond_3

    invoke-virtual {v5, v10}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0003

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v10

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private makeHoverText(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 4

    const v3, 0x7f0c00c8

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private updateAvatarView()V
    .locals 12

    const v7, 0x7f02027f

    const v11, 0x7f02027d

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v6, v8}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-ne v6, v10, :cond_b

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    long-to-int v5, v6

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v6, "CBmessages"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v6, v8}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02027c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    :goto_1
    const-string v2, ""

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v7

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategory(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-boolean v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarClickable:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v6, v2}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v6

    if-eqz v6, :cond_10

    sget-boolean v6, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->getSecretAvatar(J)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_4
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v6, v9}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2
    const-string v6, "Pushmessage"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v6, v8}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020287

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v6, v8}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02027e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_7
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_8
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v6, v4, v10}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v6, v4, v10}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableYellowPage()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/mms/data/YellowPageDataCache;->getInstance()Lcom/android/mms/data/YellowPageDataCache;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/mms/data/YellowPageDataCache;->isYPNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020077

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v6, "Mms/ConversationListItem"

    const-string v7, "=== isYpNumber, set YP thumbnail.============="

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v6, v8}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_b
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    long-to-int v5, v6

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/android/mms/ui/MessageUtils;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    :cond_d
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    :cond_e
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->formatMessage()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_f
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0419

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v6, v9}, Landroid/widget/QuickContactBadge;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_10
    iget-object v6, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v6, v0}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4
.end method

.method private updateFromView()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    const v1, 0x7f0c01f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategory(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->formatMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRemovingContactThumbnail()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListItem;->mIsSplitMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    goto :goto_0
.end method


# virtual methods
.method public IsMMS(Landroid/content/Context;J)Z
    .locals 12

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v9, 0x0

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const-string v2, "content://mms-sms/hover_pdu"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v2, v7, p2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-nez v2, :cond_5

    move v2, v11

    :goto_0
    return v2

    :catchall_0
    move-exception v2

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public SetHPWListenerForPenHover(Landroid/content/Context;Lcom/android/mms/data/Conversation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    new-instance v1, Lcom/android/mms/ui/ConversationListItem$3;

    invoke-direct {v1, p0, p2}, Lcom/android/mms/ui/ConversationListItem$3;-><init>(Lcom/android/mms/ui/ConversationListItem;Lcom/android/mms/data/Conversation;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public bind(Landroid/content/Context;Lcom/android/mms/data/Conversation;Z)V
    .locals 24

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p2}, Lcom/android/mms/ui/ConversationListItem;->SetHPWListenerForPenHover(Landroid/content/Context;Lcom/android/mms/data/Conversation;)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v22

    if-lez v23, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDisplayTotalCountPerThread()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    const v3, 0x7f02008f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/16 v17, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-nez v2, :cond_7

    const/16 v17, 0x8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const/16 v20, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    const v3, 0x7f0c000a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategory(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationListItem;->changeFontSize7Step(I)V

    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRemovingContactThumbnail()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/ConversationListItem;->mIsSplitMode:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    :goto_5
    if-eqz p3, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_6
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0417

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0418

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v4, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDisplayTotalCountPerThread()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteTheme()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090057

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v3

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    const v3, 0x7f0c01c3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getSnippet()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v7, " "

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasError()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    const v3, 0x7f0c0137

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasSending()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    const v3, 0x7f0c0136

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const/16 v17, 0x8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMMSStatusUIForCHN()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v21, v0

    const/16 v18, 0x1

    const/4 v6, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getDate()J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v15, v2, v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sim_slot"

    aput-object v3, v5, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    :goto_9
    if-eqz v14, :cond_b

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDataOnlyDSDSOnechip()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "sim_slot"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    move/from16 v0, v19

    invoke-static {v2, v0}, Lcom/android/mms/util/NetworkConnectionUtils;->isMmsNetworkAvailable(Landroid/content/Context;I)Z

    move-result v18

    :goto_a
    if-nez v18, :cond_b

    const-string v2, "Mms/ConversationListItem"

    const-string v3, "pending status : change to pending status"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    const v3, 0x7f0c0244

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_b
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move-object v11, v6

    invoke-static/range {v7 .. v13}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto :goto_9

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/util/NetworkConnectionUtils;->isMmsNetworkAvailable(Landroid/content/Context;)Z

    move-result v18

    goto :goto_a

    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->hasPending()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    const v3, 0x7f0c009d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const/16 v17, 0x8

    goto/16 :goto_2

    :cond_f
    const/16 v20, 0x8

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListItem;->formatMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationListItem;->changeFontSize(I)V

    goto/16 :goto_4

    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    goto/16 :goto_5

    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListItem;->updateAvatarView()V

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_6
.end method

.method public changeFontSize(I)V
    .locals 12

    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    iget v9, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    if-ne v8, v9, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    iput v8, p0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSize()Z

    move-result v8

    if-eqz v8, :cond_1

    const/high16 v8, 0x7f0a0000

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v8, 0x7f0a0010

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const v8, 0x7f0a0013

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/MmsConfig;->isFolderModel(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v8, 0x7f0a0062

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const/4 v8, 0x5

    if-eq p1, v8, :cond_3

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    const/4 v9, 0x1

    const/4 v10, 0x3

    invoke-static {v10, p1}, Lcom/android/mms/ui/FontSizeController;->getFontSize(II)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationListItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_0
    const v8, 0x7f0a0003

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v8, 0x7f0a0011

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v2, v8

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const v8, 0x7f0a0014

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :pswitch_1
    const v8, 0x7f0a0004

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v8, 0x7f0a0012

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v1, v8

    iput v1, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const v8, 0x7f0a0015

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0009

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public changeFontSize7Step(I)V
    .locals 26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v22, "Mms/ConversationListItem"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "changeFontSize7Step() old font = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " mFontSize = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/ConversationListItem;->mOldFontSize:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSize()Z

    move-result v22

    if-eqz v22, :cond_1

    const/high16 v22, 0x7f0a0000

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v22, 0x7f0a000a

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v6, v0

    const v22, 0x7f0a0010

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    const v22, 0x7f0a0013

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x3

    move/from16 v0, v24

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/ui/FontSizeController;->getFontSize(II)F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    :goto_1
    const/16 v22, 0x7

    move/from16 v0, p1

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x3

    move/from16 v0, v24

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/ui/FontSizeController;->getFontSize(II)F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/ui/ConversationListItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_0
    const v22, 0x7f0a00d2

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v22, 0x7f0a00c9

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v14, v0

    const v22, 0x7f0a0010

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v15, v0

    const v22, 0x7f0a0013

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v16, v0

    iput v14, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v18

    iput v15, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move/from16 v0, v16

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    :pswitch_1
    const v22, 0x7f0a00d3

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v22, 0x7f0a00c9

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v10, v0

    const v22, 0x7f0a00cc

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v11, v0

    const v22, 0x7f0a00cf

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v12, v0

    iput v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v18

    iput v11, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v20

    iput v12, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    :pswitch_2
    const v22, 0x7f0a00d4

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v22, 0x7f0a00ca

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v2, v0

    const v22, 0x7f0a00cd

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v3, v0

    const v22, 0x7f0a00d0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v4, v0

    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v18

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    :pswitch_3
    const v22, 0x7f0a00d5

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v22, 0x7f0a00cb

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v7, v0

    const v22, 0x7f0a00ce

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v8, v0

    const v22, 0x7f0a00d1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v9, v0

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v18

    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v20

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a00d6

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAvatarView()Landroid/widget/QuickContactBadge;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method public getCheckBoxView()Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v0, :cond_0

    const v0, 0x7f0b0094

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method public getbodyFromMMS(Landroid/content/Context;J)Ljava/lang/String;
    .locals 12

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, ""

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-string v2, "content://mms-sms/hover_body"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v2, v8, p2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    if-nez v6, :cond_6

    move-object v6, v10

    :cond_4
    :goto_0
    return-object v6

    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    move-object v6, v10

    goto :goto_0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 13

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    const-string v9, "DragDrop"

    const-string v10, "Unknown action type received by OnDragListener."

    invoke-static {v9, v10}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    move v7, v6

    :goto_1
    return v7

    :pswitch_0
    const/4 v6, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v9, :cond_2

    :cond_1
    const/4 v6, 0x0

    move v7, v6

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    const v10, 0x7f0c014d

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    const/4 v6, 0x0

    move v7, v6

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "text/html"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "text/plain"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    const v10, 0x7f0c014d

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSupportedUri(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mContext:Landroid/content/Context;

    const v10, 0x7f0c014d

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getRecipientIds()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/mms/data/Conversation;->deleteConversation(J)I

    const/4 v9, 0x0

    invoke-static {v9, v2, v3}, Lcom/android/mms/ui/MessageUtils;->openComposerWithDropObject(Landroid/net/Uri;Landroid/content/ClipData;Landroid/content/ClipDescription;)V

    :goto_2
    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v9, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9, v2, v3}, Lcom/android/mms/ui/MessageUtils;->openComposerWithDropObject(Landroid/net/Uri;Landroid/content/ClipData;Landroid/content/ClipDescription;)V

    goto :goto_2

    :pswitch_2
    const/4 v6, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0b004a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFromView:Landroid/widget/TextView;

    const v0, 0x7f0b006e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    const v0, 0x7f0b0151

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mDateView:Landroid/widget/TextView;

    const v0, 0x7f0b0150

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mStatusView:Landroid/widget/TextView;

    const v0, 0x7f0b0049

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    new-instance v1, Lcom/android/mms/ui/ConversationListItem$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListItem$1;-><init>(Lcom/android/mms/ui/ConversationListItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0b0094

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v0, 0x7f0b014f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mUnreadCount:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->subjectViewHpw:Landroid/widget/HoverPopupWindow;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mSubjectView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHoverPopupType(I)V

    invoke-virtual {p0, p0}, Lcom/android/mms/ui/ConversationListItem;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 3

    move-object v0, p1

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListItem;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/ConversationListItem$2;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ConversationListItem$2;-><init>(Lcom/android/mms/ui/ConversationListItem;Lcom/android/mms/data/Contact;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListItem;->unbind()V

    goto :goto_0
.end method

.method public setAvatarClickable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarClickable:Z

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p1}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    return-void
.end method

.method public setFontSize()V
    .locals 1

    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->getFontSizeIndexForUi()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListItem;->mFontSize:I

    return-void
.end method

.method public setSplitMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListItem;->mIsSplitMode:Z

    return-void
.end method

.method public trim()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Mms/ConversationListItem"

    const-string v1, "trim()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem;->mAvatarView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final unbind()V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    return-void
.end method
