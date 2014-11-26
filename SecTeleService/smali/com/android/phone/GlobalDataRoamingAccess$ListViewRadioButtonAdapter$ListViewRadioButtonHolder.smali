.class Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$ListViewRadioButtonHolder;
.super Ljava/lang/Object;
.source "GlobalDataRoamingAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListViewRadioButtonHolder"
.end annotation


# instance fields
.field private mListViewText:Landroid/widget/TextView;

.field private mRadioButton:Landroid/widget/RadioButton;

.field final synthetic this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;


# direct methods
.method constructor <init>(Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;Landroid/view/View;I)V
    .locals 3
    .param p2    # Landroid/view/View;
    .param p3    # I

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$ListViewRadioButtonHolder;->this$1:Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$ListViewRadioButtonHolder;->mListViewText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$ListViewRadioButtonHolder;->mRadioButton:Landroid/widget/RadioButton;

    const v1, 0x7f0a010a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$ListViewRadioButtonHolder;->mListViewText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$ListViewRadioButtonHolder;->mListViewText:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    # getter for: Lcom/android/phone/GlobalDataRoamingAccess;->mEntries:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/phone/GlobalDataRoamingAccess;->access$200(Lcom/android/phone/GlobalDataRoamingAccess;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0109

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$ListViewRadioButtonHolder;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$ListViewRadioButtonHolder;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p3}, Landroid/view/View;->setId(I)V

    iget-object v1, p1, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    # invokes: Lcom/android/phone/GlobalDataRoamingAccess;->checkSecureSetting(I)Z
    invoke-static {v1, p3}, Lcom/android/phone/GlobalDataRoamingAccess;->access$400(Lcom/android/phone/GlobalDataRoamingAccess;I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$ListViewRadioButtonHolder;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v1, p1, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    # getter for: Lcom/android/phone/GlobalDataRoamingAccess;->mRadioButtonList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/GlobalDataRoamingAccess;->access$500(Lcom/android/phone/GlobalDataRoamingAccess;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$ListViewRadioButtonHolder;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
