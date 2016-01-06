.class public Lcom/android/settings/accounts/AccountSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccountSettings.java"

# interfaces
.implements Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/AccountSettings$ConfirmAutoSyncChangeFragment;,
        Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;,
        Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;,
        Lcom/android/settings/accounts/AccountSettings$AccountPreference;,
        Lcom/android/settings/accounts/AccountSettings$ProfileData;
    }
.end annotation


# static fields
.field private static final ADD_ACCOUNT_ACTION:Ljava/lang/String; = "android.settings.ADD_ACCOUNT_SETTINGS"

.field private static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field private static final ORDER_LAST:I = 0x3e9

.field private static final ORDER_NEXT_TO_LAST:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "AccountSettings"

.field private static final TAG_CONFIRM_AUTO_SYNC_CHANGE:Ljava/lang/String; = "confirmAutoSyncChange"


# instance fields
.field private mAuthorities:[Ljava/lang/String;

.field private mAuthoritiesCount:I

.field private mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

.field private mProfileNotAvailablePreference:Landroid/preference/Preference;

.field private mProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/accounts/AccountSettings$ProfileData;",
            ">;"
        }
    .end annotation
.end field

.field private mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    .line 86
    new-instance v0, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings/accounts/AccountSettings;Lcom/android/settings/accounts/AccountSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthoritiesCount:I

    .line 549
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/AccountSettings;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSettings;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->cleanUpPreferences()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accounts/AccountSettings;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->listenToAccountUpdates()V

    return-void
.end method

.method private accountTypeHasAnyRequestedAuthorities(Lcom/android/settings/accounts/AuthenticatorHelper;Ljava/lang/String;)Z
    .locals 6
    .param p1, "helper"    # Lcom/android/settings/accounts/AuthenticatorHelper;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 424
    iget v4, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthoritiesCount:I

    if-nez v4, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v2

    .line 428
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/settings/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 430
    .local v0, "authoritiesForType":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 431
    const-string v2, "AccountSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No sync authorities for account type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 432
    goto :goto_0

    .line 434
    :cond_2
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v4, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthoritiesCount:I

    if-ge v1, v4, :cond_3

    .line 435
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 434
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    .line 439
    goto :goto_0
.end method

.method private cleanUpPreferences()V
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 310
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 314
    return-void
.end method

.method private getAccountTypePreferences(Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "helper"    # Lcom/android/settings/accounts/AuthenticatorHelper;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/accounts/AuthenticatorHelper;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accounts/AccountSettings$AccountPreference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v9

    .line 365
    .local v9, "accountTypes":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    array-length v1, v9

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    .local v8, "accountTypePreferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/accounts/AccountSettings$AccountPreference;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    array-length v1, v9

    if-ge v11, v1, :cond_4

    .line 369
    aget-object v7, v9, v11

    .line 371
    .local v7, "accountType":Ljava/lang/String;
    invoke-direct {p0, p1, v7}, Lcom/android/settings/accounts/AccountSettings;->accountTypeHasAnyRequestedAuthorities(Lcom/android/settings/accounts/AuthenticatorHelper;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 368
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 375
    .local v3, "label":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, v7, p2}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v10

    .line 381
    .local v10, "accounts":[Landroid/accounts/Account;
    array-length v1, v10

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p1, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v12, 0x1

    .line 384
    .local v12, "skipToAccount":Z
    :goto_2
    if-eqz v12, :cond_3

    .line 385
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 386
    .local v5, "fragmentArguments":Landroid/os/Bundle;
    const-string v1, "account"

    const/4 v2, 0x0

    aget-object v2, v10, v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 388
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v5, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 390
    new-instance v0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    .line 393
    .local v0, "tempAcc":Lcom/android/settings/accounts/AccountSettings$AccountPreference;
    const v1, 0x7f040067

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setLayoutResource(I)V

    .line 395
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 381
    .end local v0    # "tempAcc":Lcom/android/settings/accounts/AccountSettings$AccountPreference;
    .end local v5    # "fragmentArguments":Landroid/os/Bundle;
    .end local v12    # "skipToAccount":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_2

    .line 397
    .restart local v12    # "skipToAccount":Z
    :cond_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 398
    .restart local v5    # "fragmentArguments":Landroid/os/Bundle;
    const-string v1, "account_type"

    invoke-virtual {v5, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v1, "account_label"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v5, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 403
    new-instance v0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v1, Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v7}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    .line 406
    .restart local v0    # "tempAcc":Lcom/android/settings/accounts/AccountSettings$AccountPreference;
    const v1, 0x7f040067

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setLayoutResource(I)V

    .line 408
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 413
    .end local v0    # "tempAcc":Lcom/android/settings/accounts/AccountSettings$AccountPreference;
    .end local v3    # "label":Ljava/lang/CharSequence;
    .end local v5    # "fragmentArguments":Landroid/os/Bundle;
    .end local v7    # "accountType":Ljava/lang/String;
    .end local v10    # "accounts":[Landroid/accounts/Account;
    .end local v12    # "skipToAccount":Z
    :cond_4
    new-instance v1, Lcom/android/settings/accounts/AccountSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/AccountSettings$2;-><init>(Lcom/android/settings/accounts/AccountSettings;)V

    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 419
    return-object v8
.end method

.method private listenToAccountUpdates()V
    .locals 4

    .prologue
    .line 317
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 318
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 319
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 320
    .local v0, "authenticatorHelper":Lcom/android/settings/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 318
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    .end local v0    # "authenticatorHelper":Lcom/android/settings/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private newAddAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 289
    .local v0, "preference":Landroid/preference/Preference;
    const v1, 0x7f0a0b40

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 290
    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 292
    const v1, 0x7f040067

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 294
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 295
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 296
    return-object v0
.end method

.method private newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 301
    .local v0, "preference":Landroid/preference/Preference;
    const v1, 0x7f0a00f8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 302
    const v1, 0x7f020091

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 303
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 304
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 305
    return-object v0
.end method

.method private stopListeningToAccountUpdates()V
    .locals 4

    .prologue
    .line 327
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 328
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 329
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    iget-object v0, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 330
    .local v0, "authenticatorHelper":Lcom/android/settings/accounts/AuthenticatorHelper;
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 328
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    .end local v0    # "authenticatorHelper":Lcom/android/settings/accounts/AuthenticatorHelper;
    :cond_1
    return-void
.end method

.method private updateAccountTypes(Lcom/android/settings/accounts/AccountSettings$ProfileData;)V
    .locals 5
    .param p1, "profileData"    # Lcom/android/settings/accounts/AccountSettings$ProfileData;

    .prologue
    .line 337
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 338
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 339
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    iget-object v4, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/accounts/AccountSettings;->getAccountTypePreferences(Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v2

    .line 341
    .local v2, "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/accounts/AccountSettings$AccountPreference;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 342
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 343
    iget-object v4, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    :cond_0
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 346
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 357
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "preferences":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/accounts/AccountSettings$AccountPreference;>;"
    :cond_1
    :goto_1
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 358
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 360
    :cond_2
    return-void

    .line 350
    :cond_3
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 351
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const v4, 0x7f020063

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setIcon(I)V

    .line 352
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v3, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    const v4, 0x7f0a00f9

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 355
    iget-object v3, p1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V
    .locals 5
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .param p2, "addCategory"    # Z
    .param p3, "parent"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 265
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings/accounts/AccountSettings$ProfileData;-><init>(Lcom/android/settings/accounts/AccountSettings$1;)V

    .line 266
    .local v1, "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    iput-object p1, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 267
    if-eqz p2, :cond_3

    .line 268
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    .line 269
    iget-object v3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0a00f7

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 270
    iget-object v2, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {p3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 274
    :goto_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    new-instance v2, Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-direct {v2, v0, v3, v4, p0}, Lcom/android/settings/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v2, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->authenticatorHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 277
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    const-string v3, "no_modify_accounts"

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->newAddAccountPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    .line 281
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->newRemoveWorkProfilePreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    return-void

    .line 269
    :cond_2
    const v2, 0x7f0a00f6

    goto :goto_0

    .line 272
    :cond_3
    iput-object p3, v1, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    goto :goto_1
.end method


# virtual methods
.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    .line 188
    .local v0, "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->updateAccountTypes(Lcom/android/settings/accounts/AccountSettings$ProfileData;)V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing Settings screen for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v1, 0x7f0a0798

    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    .line 122
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mProfileNotAvailablePreference:Landroid/preference/Preference;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "authorities"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthoritiesCount:I

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v3, Lcom/android/settings/SubSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    move v3, v1

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addShowInfoAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSettings;->setHasOptionsMenu(Z)V

    .line 130
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 134
    const/high16 v0, 0x7f100000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 135
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 136
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->stopListeningToAccountUpdates()V

    .line 181
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 182
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->cleanUpPreferences()V

    .line 183
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    .line 198
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 199
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 200
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    .line 201
    .local v3, "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    iget-object v6, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Landroid/preference/Preference;

    if-ne p1, v6, :cond_0

    .line 202
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.USER"

    iget-object v7, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 204
    const-string v6, "authorities"

    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/AccountSettings;->startActivity(Landroid/content/Intent;)V

    .line 221
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    :goto_1
    return v5

    .line 208
    .restart local v3    # "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    :cond_0
    iget-object v6, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->removeWorkProfilePreference:Landroid/preference/Preference;

    if-ne p1, v6, :cond_1

    .line 209
    iget-object v6, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    iget v4, v6, Landroid/content/pm/UserInfo;->id:I

    .line 210
    .local v4, "userId":I
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/android/settings/accounts/AccountSettings$1;

    invoke-direct {v7, p0, v4}, Lcom/android/settings/accounts/AccountSettings$1;-><init>(Lcom/android/settings/accounts/AccountSettings;I)V

    invoke-static {v6, v4, v7}, Lcom/android/settings/Utils;->createRemoveConfirmationDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 199
    .end local v4    # "userId":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v3    # "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v8, 0x7f0e03b2

    const v7, 0x7f0e03b1

    const v6, 0x7f0e03b0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 140
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 141
    .local v0, "currentProfile":Landroid/os/UserHandle;
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 142
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 147
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 148
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 167
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 151
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    iget-object v2, v2, Lcom/android/settings/accounts/AccountSettings$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 153
    .local v1, "managedProfile":Landroid/os/UserHandle;
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 158
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/accounts/AccountSettings$MasterSyncStateClickListener;-><init>(Lcom/android/settings/accounts/AccountSettings;Landroid/os/UserHandle;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 163
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 165
    .end local v1    # "managedProfile":Landroid/os/UserHandle;
    :cond_1
    const-string v2, "AccountSettings"

    const-string v3, "Method onPrepareOptionsMenu called before mProfiles was initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->updateUi()V

    .line 173
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSettings$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 174
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings;->listenToAccountUpdates()V

    .line 175
    return-void
.end method

.method updateUi()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 226
    const v8, 0x7f050001

    invoke-virtual {p0, v8}, Lcom/android/settings/accounts/AccountSettings;->addPreferencesFromResource(I)V

    .line 228
    iget-object v8, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v8}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 230
    const-string v7, "AccountSettings"

    const-string v8, "We should not be showing settings for a managed profile"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings;->finish()V

    .line 260
    :cond_0
    return-void

    .line 235
    :cond_1
    const-string v8, "account"

    invoke-virtual {p0, v8}, Lcom/android/settings/accounts/AccountSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 236
    .local v2, "preferenceScreen":Landroid/preference/PreferenceScreen;
    iget-object v8, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 238
    iget-object v8, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 239
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    invoke-direct {p0, v6, v7, v2}, Lcom/android/settings/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 252
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 253
    .local v5, "profilesCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 254
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSettings;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    .line 255
    .local v3, "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    iget-object v7, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 256
    iget-object v7, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->preferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 258
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/settings/accounts/AccountSettings;->updateAccountTypes(Lcom/android/settings/accounts/AccountSettings$ProfileData;)V

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    .end local v1    # "i":I
    .end local v3    # "profileData":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    .end local v5    # "profilesCount":I
    :cond_4
    iget-object v8, p0, Lcom/android/settings/accounts/AccountSettings;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 242
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 243
    .restart local v5    # "profilesCount":I
    if-le v5, v0, :cond_5

    .line 244
    .local v0, "addCategory":Z
    :goto_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v5, :cond_2

    .line 245
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v7, v0, v2}, Lcom/android/settings/accounts/AccountSettings;->updateProfileUi(Landroid/content/pm/UserInfo;ZLandroid/preference/PreferenceScreen;)V

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "addCategory":Z
    .end local v1    # "i":I
    :cond_5
    move v0, v7

    .line 243
    goto :goto_1
.end method
