.class public Lcom/android/settings/users/AppRestrictionsDetail;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppRestrictionsDetail.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mList:Landroid/preference/PreferenceGroup;

.field private mPackageName:Ljava/lang/String;

.field private mRestrictions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mUser:Landroid/os/UserHandle;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-object v1, p2, v0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object p3, p1, v0

    :cond_0
    return-object p3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private makeList()V
    .locals 12

    const v11, 0x7f040205

    iget-object v9, p0, Lcom/android/settings/users/AppRestrictionsDetail;->mRestrictions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/RestrictionEntry;

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :goto_1
    if-eqz v5, :cond_0

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setPersistent(Z)V

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/users/AppRestrictionsDetail;->mList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :pswitch_0
    new-instance v5, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v9, v5

    check-cast v9, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :pswitch_1
    new-instance v5, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v8

    :cond_1
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10, v8}, Lcom/android/settings/users/AppRestrictionsDetail;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v9, v5

    check-cast v9, Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object v9, v5

    check-cast v9, Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object v9, v5

    check-cast v9, Landroid/preference/ListPreference;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object v9, v5

    check-cast v9, Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    move-object v9, v5

    check-cast v9, Landroid/preference/ListPreference;

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto/16 :goto_1

    :pswitch_2
    new-instance v5, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object v9, v5

    check-cast v9, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object v9, v5

    check-cast v9, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move-object v9, v5

    check-cast v9, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v9, v7}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    move-object v9, v5

    check-cast v9, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    move-object v9, v5

    check-cast v9, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto/16 :goto_1

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsDetail;->mPackageName:Ljava/lang/String;

    const-string v1, "user_handle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsDetail;->mUser:Landroid/os/UserHandle;

    const-string v1, "restriction_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsDetail;->mRestrictions:Ljava/util/ArrayList;

    :cond_0
    const-string v1, "AppRestrictionsDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate() - mUser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsDetail;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsDetail;->mUserManager:Landroid/os/UserManager;

    const v1, 0x7f07001b

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsDetail;->mList:Landroid/preference/PreferenceGroup;

    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsDetail;->makeList()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/android/settings/users/AppRestrictionsDetail;->mRestrictions:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/users/AppRestrictionsDetail;->mRestrictions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionEntry;

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    :goto_1
    iget-object v7, p0, Lcom/android/settings/users/AppRestrictionsDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/users/AppRestrictionsDetail;->mRestrictions:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/users/AppRestrictionsDetail;->mUser:Landroid/os/UserHandle;

    invoke-static {v7, v8, v9}, Lcom/android/settings/users/RestrictionUtils;->setRestrictions(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    :cond_1
    :goto_2
    const/4 v7, 0x1

    return v7

    :pswitch_1
    move-object v3, p1

    check-cast v3, Landroid/preference/ListPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v8

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v7, v8, p2}, Lcom/android/settings/users/AppRestrictionsDetail;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_2
    move-object v6, p2

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    invoke-interface {v6, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/settings/users/AppRestrictionsDetail;->mUserManager:Landroid/os/UserManager;

    iget-object v8, p0, Lcom/android/settings/users/AppRestrictionsDetail;->mPackageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/users/AppRestrictionsDetail;->mRestrictions:Ljava/util/ArrayList;

    invoke-static {v9}, Lcom/android/settings/users/RestrictionUtils;->restrictionsToBundle(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/users/AppRestrictionsDetail;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
