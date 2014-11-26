.class Lcom/android/phone/callsettings/DeletePrefix$6;
.super Ljava/lang/Object;
.source "DeletePrefix.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/DeletePrefix;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/DeletePrefix;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/DeletePrefix;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/DeletePrefix$6;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/phone/callsettings/DeletePrefix$6;->this$0:Lcom/android/phone/callsettings/DeletePrefix;

    const/4 v1, 0x0

    # invokes: Lcom/android/phone/callsettings/DeletePrefix;->updateItem(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/DeletePrefix;->access$700(Lcom/android/phone/callsettings/DeletePrefix;Ljava/lang/String;)V

    return-void
.end method
