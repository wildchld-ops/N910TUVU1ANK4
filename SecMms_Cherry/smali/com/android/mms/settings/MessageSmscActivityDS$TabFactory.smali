.class Lcom/android/mms/settings/MessageSmscActivityDS$TabFactory;
.super Ljava/lang/Object;
.source "MessageSmscActivityDS.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/settings/MessageSmscActivityDS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabFactory"
.end annotation


# instance fields
.field mctx:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/settings/MessageSmscActivityDS;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/MessageSmscActivityDS;Landroid/content/Context;)V
    .locals 0
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/mms/settings/MessageSmscActivityDS$TabFactory;->this$0:Lcom/android/mms/settings/MessageSmscActivityDS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/settings/MessageSmscActivityDS$TabFactory;->mctx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/settings/MessageSmscActivityDS$TabFactory;->this$0:Lcom/android/mms/settings/MessageSmscActivityDS;

    # getter for: Lcom/android/mms/settings/MessageSmscActivityDS;->mSmscEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/settings/MessageSmscActivityDS;->access$200(Lcom/android/mms/settings/MessageSmscActivityDS;)Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method
