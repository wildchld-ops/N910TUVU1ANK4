.class Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RestoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homesync/RestoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/homesync/RestoreFragment$ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private isSelected:J

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/homesync/RestoreFragment$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/homesync/RestoreFragment;

.field private tmpRadioBtn:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Lcom/android/settings/homesync/RestoreFragment;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .param p2    # Landroid/content/Context;
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/homesync/RestoreFragment$ListItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->isSelected:J

    iput-object p4, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->items:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;)J
    .locals 2
    .param p0    # Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    iget-wide v0, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->isSelected:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;J)J
    .locals 0
    .param p0    # Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->isSelected:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;)Landroid/widget/RadioButton;
    .locals 1
    .param p0    # Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;

    iget-object v0, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->tmpRadioBtn:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;Landroid/widget/RadioButton;)Landroid/widget/RadioButton;
    .locals 0
    .param p0    # Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;
    .param p1    # Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->tmpRadioBtn:Landroid/widget/RadioButton;

    return-object p1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    move-object v4, p2

    if-nez v4, :cond_0

    iget-object v6, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->this$0:Lcom/android/settings/homesync/RestoreFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v6, 0x7f040203

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    :cond_0
    iget-object v6, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/homesync/RestoreFragment$ListItem;

    if-eqz v2, :cond_3

    new-instance v1, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;

    invoke-direct {v1}, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;-><init>()V

    const v6, 0x7f0b0139

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f0b02a8

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f0b009b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, v1, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/android/settings/homesync/RestoreFragment$ListItem;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/settings/homesync/RestoreFragment$ListItem;->getSize()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {v2}, Lcom/android/settings/homesync/RestoreFragment$ListItem;->getDate()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;->folderName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v6, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    new-instance v7, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;

    invoke-direct {v7, p0, p1}, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter$1;-><init>(Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-wide v6, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->isSelected:J

    int-to-long v8, p1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    :goto_0
    return-object v4

    :cond_4
    iget-object v6, v1, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->tmpRadioBtn:Landroid/widget/RadioButton;

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget-object v7, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->tmpRadioBtn:Landroid/widget/RadioButton;

    if-eq v6, v7, :cond_3

    iget-object v6, v1, Lcom/android/settings/homesync/RestoreFragment$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iput-object v6, p0, Lcom/android/settings/homesync/RestoreFragment$ListItemAdapter;->tmpRadioBtn:Landroid/widget/RadioButton;

    goto :goto_0
.end method
