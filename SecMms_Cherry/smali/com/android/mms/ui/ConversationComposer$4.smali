.class Lcom/android/mms/ui/ConversationComposer$4;
.super Landroid/content/BroadcastReceiver;
.source "ConversationComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationComposer;->registerRcsActionBroadcastReciver()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mConfigurationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 1

    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$4;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-class v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer$4;->mIntentClass:Ljava/lang/Class;

    const-class v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationComposer$4;->mConfigurationClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
