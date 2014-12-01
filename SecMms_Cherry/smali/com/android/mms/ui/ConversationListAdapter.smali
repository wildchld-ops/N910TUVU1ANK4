.class public Lcom/android/mms/ui/ConversationListAdapter;
.super Landroid/widget/CursorAdapter;
.source "ConversationListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/ConversationListAdapter"


# instance fields
.field private mCheckedChatList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableCheckedView:Z

.field private mEnabled:Z

.field private final mFactory:Landroid/view/LayoutInflater;

.field private mHasLockedThreadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAnimationEnable:Z

.field private mIsMultiMode:Z

.field private mIsSplitMode:Z

.field private mListHoverController:Lcom/android/mms/hover/ListHoverController;

.field private mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

.field private mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private mSelectedThreadId:J

.field private mSplitModePreference:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsAnimationEnable:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMultiMode:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mEnableCheckedView:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mEnabled:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedChatList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/mms/hover/ListHoverController;

    invoke-direct {v0, p1}, Lcom/android/mms/hover/ListHoverController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListAdapter;)Lcom/android/mms/hover/ListHoverController;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6

    const/4 v2, 0x0

    instance-of v3, p1, Lcom/android/mms/ui/ConversationListItem;

    if-nez v3, :cond_0

    const-string v2, "Mms/ConversationListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected bound view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/mms/ui/ConversationListItem;

    invoke-static {p2, p3}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMultiMode:Z

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItem;->getCheckBoxView()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    const/high16 v4, 0x3f800000

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setAlpha(F)V

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItem;->getCheckBoxView()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    :goto_1
    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationListAdapter;->mEnabled:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMultiMode:Z

    if-nez v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListItem;->setAvatarClickable(Z)V

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItem;->setFontSize()V

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListItem;->setSplitMode(Z)V

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mEnableCheckedView:Z

    invoke-virtual {v1, p2, v0, v2}, Lcom/android/mms/ui/ConversationListItem;->bind(Landroid/content/Context;Lcom/android/mms/data/Conversation;Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMultiMode:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    if-eqz v2, :cond_6

    const v2, 0x7f020335

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListItem;->setBackgroundResource(I)V

    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mListHoverController:Lcom/android/mms/hover/ListHoverController;

    invoke-virtual {v2, p1}, Lcom/android/mms/hover/ListHoverController;->setHoverPopupStyle(Landroid/view/View;)V

    new-instance v2, Lcom/android/mms/ui/ConversationListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ConversationListAdapter$1;-><init>(Lcom/android/mms/ui/ConversationListAdapter;Lcom/android/mms/data/Conversation;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListItem;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_4
    const-string v2, "Mms/ConversationListAdapter"

    const-string v3, "bindView() complete"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListItem;->getCheckBoxView()Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public clearCheckedList()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearHasLockedMsg()V
    .locals 2

    const-string v0, "Mms/ConversationListAdapter"

    const-string v1, "clearHasLockedMsg"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedChatList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public disableSplitMode()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    return-void
.end method

.method public enableSplitMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsSplitMode:Z

    return-void
.end method

.method public getCheckedChatConnvList()Ljava/util/ArrayList;
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

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedChatList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCheckedChatList()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedChatList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCheckedConvList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCheckedCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedList()[Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    check-cast v0, [Ljava/lang/Long;

    return-object v0
.end method

.method public getListItemSelected()J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    return-wide v0
.end method

.method public getMultiMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMultiMode:Z

    return v0
.end method

.method public getSplitModePreference()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSplitModePreference:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    move-object v0, p3

    check-cast v0, Lcom/android/mms/ui/MsgSweepActionListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MsgSweepActionListView;->isItemChecked(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mEnableCheckedView:Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public hasLockedMsg(J)Z
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public initListItemSelectedThreadId()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    return-void
.end method

.method public isCheckedThreadId(J)Z
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSPenInformationPreviewOn(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering_information_preview"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    return v2

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mFactory:Landroid/view/LayoutInflater;

    const v1, 0x7f04003e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    const-string v0, "Mms/ConversationListAdapter"

    const-string v1, "MessageListAdapter.notifyDataSetChanged()."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onContentChanged()V
    .locals 2

    const-string v0, "Mms/ConversationListAdapter"

    const-string v1, "ConversationListAdapter: onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/ui/ConversationListAdapter;)V

    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 4

    instance-of v1, p1, Lcom/android/mms/ui/ConversationListItem;

    if-nez v1, :cond_0

    const-string v1, "Mms/ConversationListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMovedToScrapHeap view is not ConversationListItem but "

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
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/ConversationListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItem;->unbind()V

    goto :goto_0
.end method

.method public setAnimation(Lcom/android/mms/animation/MsgListAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mMsgListAnimation:Lcom/android/mms/animation/MsgListAnimation;

    return-void
.end method

.method public setAnimationEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsAnimationEnable:Z

    return-void
.end method

.method public setChecked(J)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCheckedAll()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListAdapter;->clearCheckedList()V

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "session_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v4, "type"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedChatList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mEnabled:Z

    return-void
.end method

.method public setHasLockedMsg(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Mms/ConversationListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHasLockedMsg threadID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setListItemSelected(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSelectedThreadId:J

    return-void
.end method

.method public setMultiMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMultiMode:Z

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mIsMultiMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListAdapter;->mHasLockedThreadList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mOnContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    return-void
.end method

.method public setSplitModePreference(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mSplitModePreference:Z

    return-void
.end method

.method public toggleCheckBox(J)Z
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toggleCheckedChat(ILjava/lang/String;)Z
    .locals 3

    if-eqz p2, :cond_0

    move-object v1, p2

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedChatList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedChatList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    if-nez v0, :cond_2

    const/4 v2, 0x1

    :goto_2
    return v2

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListAdapter;->mCheckedChatList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method
