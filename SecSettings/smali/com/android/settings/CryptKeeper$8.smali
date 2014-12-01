.class Lcom/android/settings/CryptKeeper$8;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$8;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$8;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/CryptKeeper;->access$600(Lcom/android/settings/CryptKeeper;Z)V

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$8;->this$0:Lcom/android/settings/CryptKeeper;

    # invokes: Lcom/android/settings/CryptKeeper;->takeEmergencyCallAction()V
    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$2100(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method
