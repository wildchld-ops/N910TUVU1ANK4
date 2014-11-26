.class Lcom/android/phone/AssistedDialingList$1;
.super Ljava/lang/Object;
.source "AssistedDialingList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AssistedDialingList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AssistedDialingList;


# direct methods
.method constructor <init>(Lcom/android/phone/AssistedDialingList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/AssistedDialingList$1;->this$0:Lcom/android/phone/AssistedDialingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/phone/AssistedDialingList$1;->this$0:Lcom/android/phone/AssistedDialingList;

    # getter for: Lcom/android/phone/AssistedDialingList;->issorted:Z
    invoke-static {v5}, Lcom/android/phone/AssistedDialingList;->access$000(Lcom/android/phone/AssistedDialingList;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/AssistedDialingList$1;->this$0:Lcom/android/phone/AssistedDialingList;

    # getter for: Lcom/android/phone/AssistedDialingList;->list_sort_id:[I
    invoke-static {v5}, Lcom/android/phone/AssistedDialingList;->access$100(Lcom/android/phone/AssistedDialingList;)[I

    move-result-object v5

    aget v0, v5, p3

    :goto_0
    iget-object v5, p0, Lcom/android/phone/AssistedDialingList$1;->this$0:Lcom/android/phone/AssistedDialingList;

    # getter for: Lcom/android/phone/AssistedDialingList;->extra:Z
    invoke-static {v5}, Lcom/android/phone/AssistedDialingList;->access$200(Lcom/android/phone/AssistedDialingList;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/AssistedDialingList$1;->this$0:Lcom/android/phone/AssistedDialingList;

    # getter for: Lcom/android/phone/AssistedDialingList;->mCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/android/phone/AssistedDialingList;->access$300(Lcom/android/phone/AssistedDialingList;)Landroid/database/Cursor;

    move-result-object v5

    add-int/lit8 v6, v0, -0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/AssistedDialingList$1;->this$0:Lcom/android/phone/AssistedDialingList;

    iget-object v6, p0, Lcom/android/phone/AssistedDialingList$1;->this$0:Lcom/android/phone/AssistedDialingList;

    # getter for: Lcom/android/phone/AssistedDialingList;->mCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/android/phone/AssistedDialingList;->access$300(Lcom/android/phone/AssistedDialingList;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/android/phone/AssistedDialingList;->mCountry_name:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/phone/AssistedDialingList;->access$402(Lcom/android/phone/AssistedDialingList;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/AssistedDialingList$1;->this$0:Lcom/android/phone/AssistedDialingList;

    iget-object v6, p0, Lcom/android/phone/AssistedDialingList$1;->this$0:Lcom/android/phone/AssistedDialingList;

    # getter for: Lcom/android/phone/AssistedDialingList;->mCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/android/phone/AssistedDialingList;->access$300(Lcom/android/phone/AssistedDialingList;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/android/phone/AssistedDialingList;->mMCC:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/phone/AssistedDialingList;->access$502(Lcom/android/phone/AssistedDialingList;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v5, p0, Lcom/android/phone/AssistedDialingList$1;->this$0:Lcom/android/phone/AssistedDialingList;

    # getter for: Lcom/android/phone/AssistedDialingList;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/phone/AssistedDialingList;->access$600(Lcom/android/phone/AssistedDialingList;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "otaCountryMccKey"

    iget-object v6, p0, Lcom/android/phone/AssistedDialingList$1;->this$0:Lcom/android/phone/AssistedDialingList;

    # getter for: Lcom/android/phone/AssistedDialingList;->mMCC:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/AssistedDialingList;->access$500(Lcom/android/phone/AssistedDialingList;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v5, p0, Lcom/android/phone/AssistedDialingList$1;->this$0:Lcom/android/phone/AssistedDialingList;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "assisted_dialing_current_country"

    iget-object v7, p0, Lcom/android/phone/AssistedDialingList$1;->this$0:Lcom/android/phone/AssistedDialingList;

    # getter for: Lcom/android/phone/AssistedDialingList;->mCountry_name:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/AssistedDialingList;->access$400(Lcom/android/phone/AssistedDialingList;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    iget-object v5, p0, Lcom/android/phone/AssistedDialingList$1;->this$0:Lcom/android/phone/AssistedDialingList;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    add-int/lit8 v0, p3, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/phone/AssistedDialingList$1;->this$0:Lcom/android/phone/AssistedDialingList;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    # getter for: Lcom/android/phone/AssistedDialingList;->ASSISTED_DIALING_REFERENCE_COUNTRY:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/AssistedDialingList;->access$700()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    # getter for: Lcom/android/phone/AssistedDialingList;->REF_STRING:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/AssistedDialingList;->access$800()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p0, Lcom/android/phone/AssistedDialingList$1;->this$0:Lcom/android/phone/AssistedDialingList;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/phone/AssistedDialingList;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;
    invoke-static {}, Lcom/android/phone/AssistedDialingList;->access$900()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    # getter for: Lcom/android/phone/AssistedDialingList;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;
    invoke-static {}, Lcom/android/phone/AssistedDialingList;->access$900()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method
