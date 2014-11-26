.class Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IpNumberDelete.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/IpNumberDelete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IPCallAdapter"
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/phone/callsettings/IpNumberDelete;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/IpNumberDelete;Landroid/content/Context;ILjava/util/ArrayList;)V
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
            "Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p4, p0, Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;->items:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    move-object v0, p2

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/IpNumberDelete;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f040056

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;

    const v3, 0x7f0a0141

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    const v3, 0x7f0a0142

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    # setter for: Lcom/android/phone/callsettings/IpNumberDelete;->mDeleteStatus:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v4, v3}, Lcom/android/phone/callsettings/IpNumberDelete;->access$202(Lcom/android/phone/callsettings/IpNumberDelete;Lcom/sec/android/touchwiz/widget/TwCheckBox;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v3, p0, Lcom/android/phone/callsettings/IpNumberDelete$IPCallAdapter;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    # getter for: Lcom/android/phone/callsettings/IpNumberDelete;->mDeleteStatus:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/phone/callsettings/IpNumberDelete;->access$200(Lcom/android/phone/callsettings/IpNumberDelete;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/phone/callsettings/IpNumberDelete$DeleteItem;->getChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-object v0
.end method
