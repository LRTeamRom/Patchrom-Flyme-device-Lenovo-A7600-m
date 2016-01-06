.class public Lcom/android/settings/SettingsLicenseActivity;
.super Landroid/app/Activity;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsLicenseActivity$WebChrome;,
        Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;
    }
.end annotation


# static fields
.field private static final DEFAULT_LICENSE_PATH:Ljava/lang/String; = "/system/etc/NOTICE.html.gz"

.field private static final LOGV:Z = false

.field private static final PROPERTY_LICENSE_PATH:Ljava/lang/String; = "ro.config.license_path"

.field private static final TAG:Ljava/lang/String; = "SettingsLicenseActivity"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSpinnerDlg:Landroid/app/ProgressDialog;

.field private mTextDlg:Landroid/app/AlertDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 132
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    .line 133
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 134
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 135
    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsLicenseActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsLicenseActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsLicenseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsLicenseActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsLicenseActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLicenseActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SettingsLicenseActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsLicenseActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 303
    const v0, 0x7f0a089a

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->finish()V

    .line 306
    return-void
.end method

.method private showPageOfText(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v2, p1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/android/settings/SettingsLicenseActivity$WebChrome;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsLicenseActivity$WebChrome;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 265
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 146
    :cond_0
    const-string v6, "ro.config.license_path"

    const-string v7, "/system/etc/NOTICE.html.gz"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 148
    const-string v6, "SettingsLicenseActivity"

    const-string v7, "The system property for the license file is empty."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    .line 198
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 157
    invoke-virtual {p0, v8}, Lcom/android/settings/SettingsLicenseActivity;->setVisible(Z)V

    .line 159
    new-instance v6, Landroid/webkit/WebView;

    invoke-direct {v6, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    .line 162
    iget-object v6, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 166
    iget-object v6, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 167
    .local v3, "s":Landroid/webkit/WebSettings;
    sget-object v6, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 168
    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 169
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 170
    invoke-virtual {v3, v8}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 171
    invoke-virtual {v3, v9}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    .line 173
    new-instance v6, Lcom/android/settings/SettingsLicenseActivity$1;

    invoke-direct {v6, p0}, Lcom/android/settings/SettingsLicenseActivity$1;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    iput-object v6, p0, Lcom/android/settings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    .line 188
    const v6, 0x7f0a0899

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 189
    .local v5, "title":Ljava/lang/CharSequence;
    const v6, 0x7f0a089b

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsLicenseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 191
    .local v1, "msg":Ljava/lang/CharSequence;
    invoke-static {p0, v5, v1, v9, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    .line 192
    .local v2, "pd":Landroid/app/ProgressDialog;
    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 193
    iput-object v2, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    .line 196
    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;

    iget-object v7, p0, Lcom/android/settings/SettingsLicenseActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v0, v7}, Lcom/android/settings/SettingsLicenseActivity$LicenseFileLoader;-><init>(Lcom/android/settings/SettingsLicenseActivity;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 197
    .local v4, "thread":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->freeMemory()V

    .line 223
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 226
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 230
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 238
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 232
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->finish()V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 203
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 204
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 209
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 210
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 211
    return-void
.end method
