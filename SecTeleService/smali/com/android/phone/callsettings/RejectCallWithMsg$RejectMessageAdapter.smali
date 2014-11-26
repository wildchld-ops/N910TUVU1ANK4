.class public Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;
.super Landroid/widget/BaseAdapter;
.source "RejectCallWithMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/RejectCallWithMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RejectMessageAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/app/Activity;

.field private inflater:Landroid/view/LayoutInflater;

.field private rejectMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsg;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .param p2    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->inflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->rejectMsgList:Ljava/util/ArrayList;

    return-void
.end method

.method private drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;)V

    move-object v1, p2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04008b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :cond_0
    const v3, 0x7f0a01ef

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v3, 0x7f0a002b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter$ViewHolder;->checkedView:Landroid/view/View;

    const v3, 0x7f0a01ed

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter$ViewHolder;->rootLayout:Landroid/widget/LinearLayout;

    iget-object v3, v2, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1000(Lcom/android/phone/callsettings/RejectCallWithMsg;)Landroid/view/ActionMode;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter$ViewHolder;->checkedView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-object v3, v2, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter$ViewHolder;->checkedView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v2, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter$ViewHolder;->checkedView:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    check-cast v3, Landroid/widget/Checkable;

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mEnableCheckedView:Z
    invoke-static {v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$2000(Lcom/android/phone/callsettings/RejectCallWithMsg;)Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->rejectMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v1, 0x0

    move-object v0, p3

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsg;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$1200(Lcom/android/phone/callsettings/RejectCallWithMsg;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsg;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v3

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsg;->mEnableCheckedView:Z
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsg;->access$2002(Lcom/android/phone/callsettings/RejectCallWithMsg;Z)Z

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/RejectCallWithMsg$RejectMessageAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
