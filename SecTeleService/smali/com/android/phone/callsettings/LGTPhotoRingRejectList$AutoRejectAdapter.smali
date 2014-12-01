.class Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;
.super Landroid/widget/BaseAdapter;
.source "LGTPhotoRingRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/LGTPhotoRingRejectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private autoRejectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/app/Activity;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .param p2    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->context:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    return-void
.end method

.method private drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    move-object v6, p2

    iget-object v10, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "drawNormalScreen, autoreject pos : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " rejectNum = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v9, v9, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->log(Ljava/lang/String;)V
    invoke-static {v10, v9}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2200(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    if-eqz v3, :cond_7

    if-nez p1, :cond_1

    iget-object v9, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # invokes: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->hasUnknownItem()Z
    invoke-static {v9}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$400(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040012

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v9, 0x7f0a002d

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v9, 0x7f0a003d

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v9, 0x7f0a0031

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v9, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$1;

    invoke-direct {v9, p0, v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$1;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/view/View;->setClickable(Z)V

    new-instance v9, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$2;

    invoke-direct {v9, p0, v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$2;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;)V

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->checked:I

    iget-object v9, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "for Unknown, mScreenType "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I
    invoke-static {v11}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1600(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "position = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " checked = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2200(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/Checkable;

    if-lez v2, :cond_0

    const/4 v9, 0x1

    :goto_0
    invoke-interface {v1, v9}, Landroid/widget/Checkable;->setChecked(Z)V

    move-object v7, v6

    :goto_1
    return-object v7

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;

    if-nez v9, :cond_4

    :cond_2
    iget-object v9, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040070

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    new-instance v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;

    invoke-direct {v8, p0}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;)V

    const v9, 0x7f0a0029

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    const v9, 0x7f0a002b

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    const v9, 0x7f0a002e

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    const v9, 0x7f0a002d

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const v9, 0x7f0a0031

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const v9, 0x7f0a002c

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    iget-object v9, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v9}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2400(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Landroid/view/ActionMode;

    move-result-object v9

    if-nez v9, :cond_5

    iget-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setClickable(Z)V

    iget-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    const v9, 0x7f0a0030

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v9, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$3;

    invoke-direct {v9, p0, v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$3;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    iget-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setClickable(Z)V

    iget-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v10, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$4;

    invoke-direct {v10, p0, p1, v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$4;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;ILcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->text_layout:Landroid/widget/LinearLayout;

    new-instance v10, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$5;

    invoke-direct {v10, p0, v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$5;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    if-eqz v9, :cond_3

    iget-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->contact_name:Landroid/widget/TextView;

    iget-object v10, v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v10, v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, v3, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;->checked:I

    iget-object v9, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mScreenType "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mScreenType:I
    invoke-static {v11}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1600(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "position = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " checked = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->log(Ljava/lang/String;)V
    invoke-static {v9, v10}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2200(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Ljava/lang/String;)V

    iget-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    check-cast v9, Landroid/widget/Checkable;

    check-cast v9, Landroid/widget/Checkable;

    if-lez v2, :cond_6

    const/4 v10, 0x1

    :goto_4
    invoke-interface {v9, v10}, Landroid/widget/Checkable;->setChecked(Z)V

    iget-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    check-cast v9, Landroid/widget/Checkable;

    check-cast v9, Landroid/widget/Checkable;

    iget-object v10, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mEnableCheckedView:Z
    invoke-static {v10}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2600(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;)Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/widget/Checkable;->setChecked(Z)V

    move-object v7, v6

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;

    goto/16 :goto_2

    :cond_5
    iget-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setClickable(Z)V

    iget-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->checkedView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    new-instance v10, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;

    invoke-direct {v10, p0, v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$6;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v9, v8, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$ViewHolder;->root_Layout:Landroid/widget/LinearLayout;

    new-instance v10, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$7;

    invoke-direct {v10, p0, p1, v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter$7;-><init>(Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;ILcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    move-object v7, v6

    goto/16 :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->autoRejectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->getItem(I)Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectItem;

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

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

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

    # invokes: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->log(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v4}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$1700(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/LGTPhotoRingRejectList;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    # setter for: Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->mEnableCheckedView:Z
    invoke-static {v2, v3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList;->access$2602(Lcom/android/phone/callsettings/LGTPhotoRingRejectList;Z)Z

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/LGTPhotoRingRejectList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
