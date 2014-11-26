.class Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RejectCallWithMsgModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/RejectCallWithMsgModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeAdapter"
.end annotation


# instance fields
.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:Ljava/lang/String;

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/RejectCallWithMsgModes;Landroid/content/Context;ILjava/util/ArrayList;)V
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mItems:Ljava/util/ArrayList;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mModeList:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->access$200(Lcom/android/phone/callsettings/RejectCallWithMsgModes;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    # invokes: Lcom/android/phone/callsettings/RejectCallWithMsgModes;->getDisplayMode(Landroid/content/Context;)I
    invoke-static {v1}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->access$100(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # setter for: Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mCurMode:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->access$002(Lcom/android/phone/callsettings/RejectCallWithMsgModes;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f040087

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mMode:Ljava/lang/String;

    const v3, 0x7f0a01e0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mMode:Ljava/lang/String;

    const-string v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mTextView:Landroid/widget/TextView;

    const v4, 0x7f09091e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    const v3, 0x7f0a01e3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mMode:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->this$0:Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    # getter for: Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mCurMode:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->access$000(Lcom/android/phone/callsettings/RejectCallWithMsgModes;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_1
    const v3, 0x7f0a01e1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$1;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a01df

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$2;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter$2;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_2
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mMode:Ljava/lang/String;

    const-string v4, "icon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mTextView:Landroid/widget/TextView;

    const v4, 0x7f09091f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;->mRadioButton:Landroid/widget/RadioButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1
.end method
