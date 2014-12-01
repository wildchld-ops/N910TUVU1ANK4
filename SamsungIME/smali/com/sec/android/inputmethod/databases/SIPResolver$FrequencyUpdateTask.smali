.class public Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;
.super Landroid/os/AsyncTask;
.source "SIPResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/databases/SIPResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrequencyUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mHanja:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/inputmethod/databases/SIPResolver;


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/databases/SIPResolver;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;->this$0:Lcom/sec/android/inputmethod/databases/SIPResolver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;->mHanja:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;->this$0:Lcom/sec/android/inputmethod/databases/SIPResolver;

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/SIPResolver$FrequencyUpdateTask;->mHanja:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/databases/SIPResolver;->FrequencyUpdateHanjaDB(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
