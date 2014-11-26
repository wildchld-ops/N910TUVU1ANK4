.class public Lcom/android/mms/prioritysender/PrioritySenderListAdapter;
.super Landroid/widget/CursorAdapter;
.source "PrioritySenderListAdapter.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;
.implements Lcom/sec/android/touchwiz/widget/TwDndController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;,
        Lcom/android/mms/prioritysender/PrioritySenderListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/PrioritySenderListAdapter"

.field private static sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

.field private static sHoverTextViewIds:[I


# instance fields
.field private mDeletedAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDeletedIdx:I

.field private final mFactory:Landroid/view/LayoutInflater;

.field private mInitRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListHoverController:Lcom/android/mms/hover/ListHoverController;

.field private mMenuMode:I

.field private mOnContentChangedListener:Lcom/android/mms/prioritysender/PrioritySenderListAdapter$OnContentChangedListener;

.field private mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0b02dd

    aput v2, v0, v1

    sput-object v0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->sHoverTextViewIds:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mDeletedAddresses:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mInitRows:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mDeletedIdx:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mFactory:Landroid/view/LayoutInflater;

    iput v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mMenuMode:I

    new-instance v0, Lcom/android/mms/hover/ListHoverController;

    invoke-direct {v0, p1}, Lcom/android/mms/hover/ListHoverController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    invoke-virtual {v0, v1}, Lcom/android/mms/hover/ListHoverController;->setUseCustomHoverPopupSize(Z)V

    return-void
.end method

.method public static getContactImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # I

    invoke-static {p0}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->initContactImage(Landroid/content/Context;)V

    const/4 v0, 0x0

    if-lez p1, :cond_0

    rem-int/lit8 v0, p1, 0x5

    :cond_0
    sget-object v1, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private static declared-synchronized initContactImage(Landroid/content/Context;)V
    .locals 5
    .param p0    # Landroid/content/Context;

    const-class v2, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    sput-object v1, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const v4, 0x7f02021c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v1, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    const v4, 0x7f02021d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v1, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    const v4, 0x7f02021e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v1, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    const v4, 0x7f02021f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v1, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->sDefaultContactImage:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x4

    const v4, 0x7f020220

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private needDeleteAnimation(Landroid/database/Cursor;)Z
    .locals 2
    .param p1    # Landroid/database/Cursor;

    iget v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mDeletedIdx:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iget v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mDeletedIdx:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public allowDrag(I)Z
    .locals 1
    .param p1    # I

    const/4 v0, 0x1

    return v0
.end method

.method public allowDrop(II)Z
    .locals 1
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x1

    return v0
.end method

.method public applyChanged()Z
    .locals 14

    const/4 v10, 0x0

    iget v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mMenuMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    if-nez v0, :cond_1

    :cond_0
    move v0, v10

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mDeletedAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/android/mms/glance/GlanceUtils;->deletePrioritySender(Landroid/content/Context;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    invoke-virtual {v0, v10}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->getLong(I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->getLong(I)J

    move-result-wide v4

    new-instance v0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;-><init>(Lcom/android/mms/prioritysender/PrioritySenderListAdapter;JJ)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;

    # getter for: Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;->mPriority:J
    invoke-static {v0}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;->access$000(Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;)J

    move-result-wide v0

    add-int/lit8 v10, v7, 0x1

    int-to-long v10, v10

    cmp-long v0, v0, v10

    if-nez v0, :cond_4

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;

    # getter for: Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;->mId:J
    invoke-static {v0}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;->access$100(Lcom/android/mms/prioritysender/PrioritySenderListAdapter$Row;)J

    move-result-wide v10

    add-int/lit8 v0, v7, 0x1

    int-to-long v12, v0

    invoke-static {v1, v10, v11, v12, v13}, Lcom/android/mms/glance/GlanceUtils;->updatePrioritySenderPriority(Landroid/content/Context;JJ)I

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/PrioritySenderCache;->fillCache()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/database/Cursor;

    const/4 v4, 0x0

    const/4 v1, 0x1

    instance-of v2, p1, Lcom/android/mms/prioritysender/PrioritySenderListItem;

    if-nez v2, :cond_0

    const-string v1, "Mms/PrioritySenderListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected bound view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v10, p3

    check-cast v10, Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    :cond_1
    move-object v9, p1

    check-cast v9, Lcom/android/mms/prioritysender/PrioritySenderListItem;

    invoke-virtual {v10}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->isDummy()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v9}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->bindDummy()V

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    sget-object v3, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->sHoverTextViewIds:[I

    invoke-virtual {v2, p1, v3}, Lcom/android/mms/hover/ListHoverController;->setHoverPopupStyle(Landroid/view/View;[I)V

    :cond_2
    iget v2, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mMenuMode:I

    if-eqz v2, :cond_3

    invoke-direct {p0, p3}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->needDeleteAnimation(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    const-string v1, "Mms/PrioritySenderListAdapter"

    const-string v2, "bindView() complete"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v9}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->unbindDummy()V

    iget v2, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mMenuMode:I

    invoke-virtual {v9, p2, p3, v2}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->bind(Landroid/content/Context;Landroid/database/Cursor;I)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 4
    .param p1    # Landroid/database/Cursor;

    const-string v2, "Mms/PrioritySenderListAdapter"

    const-string v3, "changeCursor"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mMenuMode:I

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mDeletedAddresses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mInitRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    new-instance v1, Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    invoke-direct {v1, p1, v0}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;-><init>(Landroid/database/Cursor;Z)V

    :cond_1
    invoke-super {p0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delete(I)Z
    .locals 4
    .param p1    # I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mMenuMode:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    invoke-virtual {v3, p1}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->moveToPosition(I)Z

    iget-object v3, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    invoke-virtual {v3, v1}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    invoke-virtual {v3, p1}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->delete(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mDeletedAddresses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public dropDone(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->changeOrder(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public getAddress(I)Ljava/lang/String;
    .locals 2
    .param p1    # I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    invoke-virtual {v1}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    invoke-virtual {v1, p1}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    invoke-virtual {v1}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->isDummy()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isChanged()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->isChanged()Z

    move-result v0

    goto :goto_0
.end method

.method public isOnlyDummy()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/database/Cursor;
    .param p3    # Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v1, 0x7f040084

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    const-string v0, "Mms/PrioritySenderListAdapter"

    const-string v1, "onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mOnContentChangedListener:Lcom/android/mms/prioritysender/PrioritySenderListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mOnContentChangedListener:Lcom/android/mms/prioritysender/PrioritySenderListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/prioritysender/PrioritySenderListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/prioritysender/PrioritySenderListAdapter;)V

    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    instance-of v1, p1, Lcom/android/mms/prioritysender/PrioritySenderListItem;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/prioritysender/PrioritySenderListItem;

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/PrioritySenderListItem;->unbind()V

    goto :goto_0
.end method

.method public resetDeleteAnimationIndex()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mDeletedIdx:I

    return-void
.end method

.method public setDeleteAnimationIndex(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mDeletedIdx:I

    return-void
.end method

.method public setMenuMode(I)V
    .locals 2
    .param p1    # I

    iput p1, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mMenuMode:I

    iget v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mMenuMode:I

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mDeletedAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mInitRows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mPrioritySenderListCursor:Lcom/android/mms/prioritysender/PrioritySenderListCursor;

    invoke-virtual {v1, v0}, Lcom/android/mms/prioritysender/PrioritySenderListCursor;->setEditMode(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnContentChangedListener(Lcom/android/mms/prioritysender/PrioritySenderListAdapter$OnContentChangedListener;)V
    .locals 0
    .param p1    # Lcom/android/mms/prioritysender/PrioritySenderListAdapter$OnContentChangedListener;

    iput-object p1, p0, Lcom/android/mms/prioritysender/PrioritySenderListAdapter;->mOnContentChangedListener:Lcom/android/mms/prioritysender/PrioritySenderListAdapter$OnContentChangedListener;

    return-void
.end method
