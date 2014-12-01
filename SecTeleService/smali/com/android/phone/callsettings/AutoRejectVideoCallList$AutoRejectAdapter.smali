.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;
.super Landroid/widget/BaseAdapter;
.source "AutoRejectVideoCallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private autoRejectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .param p2    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    return-void
.end method

.method private drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    move-object v5, p2

    iget-object v9, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "drawNormalScreen, autoreject pos : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " rejectNum = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v8, v8, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V
    invoke-static {v9, v8}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1600(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    if-eqz v2, :cond_c

    if-nez p1, :cond_1

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    # invokes: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->hasUnknownItem()Z
    invoke-static {v8}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$400(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040012

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v8, 0x7f0a002d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v8, 0x7f0a003d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v8, 0x7f0a0031

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v8, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;

    invoke-direct {v8, p0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$1;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;

    invoke-direct {v8, p0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$2;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;)V

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "for Unknown, mScreenType "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    # getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I
    invoke-static {v10}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1300(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " checked = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1600(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Checkable;

    if-lez v1, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-interface {v0, v8}, Landroid/widget/Checkable;->setChecked(Z)V

    move-object v6, v5

    :goto_1
    return-object v6

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;

    if-nez v8, :cond_6

    :cond_2
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f04000f

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    new-instance v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;)V

    const v8, 0x7f0a0029

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    const v8, 0x7f0a002b

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    const v8, 0x7f0a002e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    const v8, 0x7f0a002d

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v8, 0x7f0a002f

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v8, 0x7f0a0031

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const v8, 0x7f0a002c

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    # getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v8}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1800(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Landroid/view/ActionMode;

    move-result-object v8

    if-nez v8, :cond_7

    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setClickable(Z)V

    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    new-instance v9, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$3;

    invoke-direct {v9, p0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$3;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    new-instance v9, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;

    invoke-direct {v9, p0, p1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$4;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;I)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$5;

    invoke-direct {v9, p0, p1, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$5;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;ILcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;

    invoke-direct {v9, p0, v2}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$6;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v8, :cond_3

    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v9, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v9, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_4

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    # invokes: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->hasUnknownItem()Z
    invoke-static {v8}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$400(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    iget v8, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    if-nez v8, :cond_8

    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0902df

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    :goto_4
    iget v1, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->checked:I

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mScreenType "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    # getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mScreenType:I
    invoke-static {v10}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1300(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " checked = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$1600(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;)V

    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    check-cast v8, Landroid/widget/Checkable;

    check-cast v8, Landroid/widget/Checkable;

    if-lez v1, :cond_b

    const/4 v9, 0x1

    :goto_5
    invoke-interface {v8, v9}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    check-cast v8, Landroid/widget/Checkable;

    check-cast v8, Landroid/widget/Checkable;

    iget-object v9, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    # getter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mEnableCheckedView:Z
    invoke-static {v9}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$2200(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z

    move-result v9

    invoke-interface {v8, v9}, Landroid/widget/Checkable;->setChecked(Z)V

    move-object v6, v5

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;

    goto/16 :goto_2

    :cond_7
    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setClickable(Z)V

    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_8
    iget v8, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0902e0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_9
    iget v8, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_a

    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0902e1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_a
    iget v8, v2, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->matched:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    iget-object v8, v7, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v9, 0x7f0902e2

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    :cond_b
    const/4 v9, 0x0

    goto :goto_5

    :cond_c
    move-object v6, v5

    goto/16 :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->getItem(I)Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    move-result-object v0

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

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

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

    # invokes: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$2300(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    # setter for: Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mEnableCheckedView:Z
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->access$2202(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Z)Z

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
