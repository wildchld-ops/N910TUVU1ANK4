.class Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;
.super Landroid/os/FileObserver;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsFileObserver"
.end annotation


# instance fields
.field private final mIsDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPath:Ljava/lang/String;

.field private final mUserHandle:I

.field final synthetic this$0:Lcom/android/providers/settings/SettingsProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/settings/SettingsProvider;ILjava/lang/String;)V
    .locals 2
    .param p2    # I
    .param p3    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->this$0:Lcom/android/providers/settings/SettingsProvider;

    const/16 v0, 0x38a

    invoke-direct {p0, p3, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mIsDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mUserHandle:I

    iput-object p3, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4
    .param p1    # I
    .param p2    # Ljava/lang/String;

    const/4 v3, 0x0

    # getter for: Lcom/android/providers/settings/SettingsProvider;->sKnownMutationsInFlight:Landroid/util/SparseArray;
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$000()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mUserHandle:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mIsDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->this$0:Lcom/android/providers/settings/SettingsProvider;

    iget v2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mUserHandle:I

    # invokes: Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCaches(I)V
    invoke-static {v1, v2}, Lcom/android/providers/settings/SettingsProvider;->access$100(Lcom/android/providers/settings/SettingsProvider;I)V

    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mIsDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
