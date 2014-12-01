.class public Lcom/android/mms/prioritysender/PrioritySenderListItem;
.super Landroid/widget/LinearLayout;
.source "PrioritySenderListItem.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# static fields
.field private static final CONVERSATION_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Mms/PrioritySenderListItem"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAvatarSize:I

.field private mAvatarView:Landroid/widget/ImageView;

.field private mContact:Lcom/android/mms/data/Contact;

.field private mDeleteView:Landroid/widget/ImageView;

.field private mFromView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mId:J

.field private mIsDummy:Z

.field private mLayout:Landroid/widget/RelativeLayout;

.field mRootLayout:Landroid/view/View;

.field private mThreadId:J

.field private mUnreadCount:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/prioritysender/PrioritySenderListItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->updateFromView()V

    return-void
.end method

.method private setAvatar(Landroid/graphics/drawable/Drawable;J)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mAvatarView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mContext:Landroid/content/Context;

    long-to-int v6, p2

    invoke-static {v5, v6}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mLayout:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202b7

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mAvatarSize:I

    iget v5, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mAvatarSize:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p1, v8, v8, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, v2, v7, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mAvatarView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mLayout:Landroid/widget/RelativeLayout;

    const v5, 0x7f0202b5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateFromView()V
    .locals 5

    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mContact:Lcom/android/mms/data/Contact;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mFromView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0467

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mContact:Lcom/android/mms/data/Contact;

    iget-object v2, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mId:J

    invoke-direct {p0, v1, v2, v3}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->setAvatar(Landroid/graphics/drawable/Drawable;J)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 10

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mIsDummy:Z

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mId:J

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mAddress:Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setHoverPopupType(I)V

    :cond_0
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mThreadId:J

    if-nez p3, :cond_5

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mAddress:Ljava/lang/String;

    sget-object v5, Lcom/android/mms/prioritysender/PrioritySenderListItem;->CONVERSATION_PROJECTION:[Ljava/lang/String;

    invoke-static {p1, v4, v5}, Lcom/android/mms/data/Conversation;->getConversationByAddress(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mThreadId:J

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mDeleteView:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    if-lez v3, :cond_7

    iget-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    if-ne v3, v7, :cond_6

    iget-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0417

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mAddress:Ljava/lang/String;

    invoke-static {v4, v9}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    invoke-direct {p0}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->updateFromView()V

    return-void

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    const/4 v0, 0x0

    throw v4

    :cond_5
    iget-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mDeleteView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mDeleteView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0418

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public bindDummy()V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f0c0447

    const/16 v3, 0x8

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mIsDummy:Z

    iput-object v5, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mContact:Lcom/android/mms/data/Contact;

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mAvatarView:Landroid/widget/ImageView;

    const v1, 0x7f0202b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mDeleteView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mUnreadCount:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mFromView:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mFromView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mFromView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mThreadId:J

    return-wide v0
.end method

.method public isDummy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mIsDummy:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b014e

    invoke-virtual {p0, v0}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mRootLayout:Landroid/view/View;

    const v0, 0x7f0b02d9

    invoke-virtual {p0, v0}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b02da

    invoke-virtual {p0, v0}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mAvatarView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mAvatarView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    const v0, 0x7f0b02dd

    invoke-virtual {p0, v0}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mFromView:Landroid/widget/TextView;

    const v0, 0x7f0b02db

    invoke-virtual {p0, v0}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mUnreadCount:Landroid/widget/TextView;

    const v0, 0x7f0b02dc

    invoke-virtual {p0, v0}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mDeleteView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mAvatarSize:I

    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mContact:Lcom/android/mms/data/Contact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/prioritysender/PrioritySenderListItem$1;

    invoke-direct {v1, p0}, Lcom/android/mms/prioritysender/PrioritySenderListItem$1;-><init>(Lcom/android/mms/prioritysender/PrioritySenderListItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mContact:Lcom/android/mms/data/Contact;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->unbind()V

    goto :goto_0
.end method

.method public final unbind()V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    return-void
.end method

.method public unbindDummy()V
    .locals 2

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListItem;->mLayout:Landroid/widget/RelativeLayout;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
