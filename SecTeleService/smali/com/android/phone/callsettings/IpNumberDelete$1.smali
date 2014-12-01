.class Lcom/android/phone/callsettings/IpNumberDelete$1;
.super Ljava/lang/Object;
.source "IpNumberDelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/IpNumberDelete;->listBinding()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/IpNumberDelete;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/IpNumberDelete;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/IpNumberDelete$1;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete$1;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpNumberDelete;->deleteIpNumber()V

    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete$1;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    iget-object v1, p0, Lcom/android/phone/callsettings/IpNumberDelete$1;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    # getter for: Lcom/android/phone/callsettings/IpNumberDelete;->mNumberItem:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/callsettings/IpNumberDelete;->access$000(Lcom/android/phone/callsettings/IpNumberDelete;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/IpNumberDelete;->saveIpNumber(Ljava/util/ArrayList;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/callsettings/IpNumberDelete$1;->this$0:Lcom/android/phone/callsettings/IpNumberDelete;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/IpNumberDelete;->finish()V

    return-void
.end method
