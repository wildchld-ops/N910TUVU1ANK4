.class Lcom/android/mms/ui/ManageSimMessages$TabFactory;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ManageSimMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabFactory"
.end annotation


# instance fields
.field mctx:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$TabFactory;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/ManageSimMessages$TabFactory;->mctx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$TabFactory;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    # getter for: Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$800(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
