.class Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DeletePrefix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/DeletePrefix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeletePrefixAdapter"
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefixNumberString:Ljava/lang/String;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/phone/callsettings/DeletePrefix;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/DeletePrefix;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .param p2    # Landroid/content/Context;
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p4, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->items:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;)Landroid/widget/RadioButton;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->mRadioButton:Landroid/widget/RadioButton;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f040022

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v4, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->mPrefixNumberString:Ljava/lang/String;

    const v4, 0x7f0a009d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->mPrefixNumberString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0a00a0

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->mRadioButton:Landroid/widget/RadioButton;

    const v4, 0x7f0a009e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v4, 0x7f0a009c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/callsettings/DeletePrefix;->access$1000(Lcom/android/phone/callsettings/DeletePrefix;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    iget-object v5, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->mPrefixNumberString:Ljava/lang/String;

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->setDefaultIpNumber(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/phone/callsettings/DeletePrefix;->access$1100(Lcom/android/phone/callsettings/DeletePrefix;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->mPrefixNumberString:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->getDefaultIpNumber()Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/callsettings/DeletePrefix;->access$1000(Lcom/android/phone/callsettings/DeletePrefix;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$1;-><init>(Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v4, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$2;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$2;-><init>(Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$3;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter$3;-><init>(Lcom/android/phone/callsettings/DeletePrefix$DeletePrefixAdapter;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
