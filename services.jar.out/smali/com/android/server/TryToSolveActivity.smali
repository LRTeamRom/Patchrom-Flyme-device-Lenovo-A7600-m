.class public Lcom/android/server/TryToSolveActivity;
.super Landroid/app/Activity;
.source "TryToSolveActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TryToSolveActivity$ListItem;
    }
.end annotation


# static fields
.field private static final ACTION_START_FEEDBACK:Ljava/lang/String; = "com.lenovo.updateassist.action.Feedback"

.field private static final FEEDBACK_SERVICE_STATE:Ljava/lang/String; = "fb_switch"

.field private static final MSG_FEEDBACK_SERVICE_STATE_CHANGED:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isFeedbackActionRegistered:Z

.field private mFeedbackServiceStateObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/TryToSolveActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/server/TryToSolveActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TryToSolveActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TryToSolveActivity;->isFeedbackActionRegistered:Z

    .line 78
    new-instance v0, Lcom/android/server/TryToSolveActivity$1;

    invoke-direct {v0, p0}, Lcom/android/server/TryToSolveActivity$1;-><init>(Lcom/android/server/TryToSolveActivity;)V

    iput-object v0, p0, Lcom/android/server/TryToSolveActivity;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lcom/android/server/TryToSolveActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/TryToSolveActivity$2;-><init>(Lcom/android/server/TryToSolveActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/TryToSolveActivity;->mFeedbackServiceStateObserver:Landroid/database/ContentObserver;

    .line 332
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TryToSolveActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TryToSolveActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/TryToSolveActivity;->setupListItems()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/TryToSolveActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TryToSolveActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/TryToSolveActivity;->setupListView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/TryToSolveActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TryToSolveActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/TryToSolveActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/TryToSolveActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TryToSolveActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/TryToSolveActivity;->mListItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/TryToSolveActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TryToSolveActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/TryToSolveActivity;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method private getListItemContentStrings()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
    const/4 v2, 0x0

    .line 241
    .local v2, "result":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/TryToSolveActivity;->mListItems:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 242
    iget-object v3, p0, Lcom/android/server/TryToSolveActivity;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 243
    .local v1, "itemCount":I
    new-array v2, v1, [Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 245
    iget-object v3, p0, Lcom/android/server/TryToSolveActivity;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TryToSolveActivity$ListItem;

    iget-object v3, v3, Lcom/android/server/TryToSolveActivity$ListItem;->itemContent:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "i":I
    .end local v1    # "itemCount":I
    :cond_0
    return-object v2
.end method

.method private isActivityActionRegistered(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 260
    const/4 v3, 0x0

    .line 262
    .local v3, "result":Z
    if-eqz p2, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 264
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, "intent":Landroid/content/Intent;
    const/16 v4, 0x20

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 267
    .local v2, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 268
    const/4 v3, 0x1

    .line 272
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    return v3
.end method

.method public static final isPackageInSystemImage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 283
    const/4 v3, 0x0

    .line 286
    .local v3, "result":Z
    const v4, 0xa200

    .line 287
    .local v4, "retrieveFlag":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 288
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 289
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 296
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    sget-object v5, Lcom/android/server/TryToSolveActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPackageInSystemImage : result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return v3

    .line 289
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 290
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 292
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 293
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final isPackageUpdated(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 309
    const/4 v3, 0x0

    .line 312
    .local v3, "result":Z
    const v4, 0xa200

    .line 313
    .local v4, "retrieveFlag":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 314
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 315
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 322
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    sget-object v5, Lcom/android/server/TryToSolveActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPackageUpdated : result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return v3

    .line 315
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 316
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 318
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 319
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private setupListItems()V
    .locals 6

    .prologue
    .line 170
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/TryToSolveActivity;->mListItems:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {p0}, Lcom/android/server/TryToSolveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "packageName"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/TryToSolveActivity;->packageName:Ljava/lang/String;

    .line 174
    iget-boolean v4, p0, Lcom/android/server/TryToSolveActivity;->isFeedbackActionRegistered:Z

    if-eqz v4, :cond_0

    .line 175
    new-instance v2, Lcom/android/server/TryToSolveActivity$4;

    const v4, 0x909003e

    invoke-virtual {p0, v4}, Lcom/android/server/TryToSolveActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/android/server/TryToSolveActivity$4;-><init>(Lcom/android/server/TryToSolveActivity;Ljava/lang/String;)V

    .line 185
    .local v2, "itemFeedback":Lcom/android/server/TryToSolveActivity$ListItem;
    iget-object v4, p0, Lcom/android/server/TryToSolveActivity;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v2    # "itemFeedback":Lcom/android/server/TryToSolveActivity$ListItem;
    :cond_0
    iget-object v4, p0, Lcom/android/server/TryToSolveActivity;->packageName:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/server/TryToSolveActivity;->isPackageInSystemImage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/TryToSolveActivity;->packageName:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/server/TryToSolveActivity;->isPackageUpdated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    new-instance v3, Lcom/android/server/TryToSolveActivity$5;

    const v4, 0x909003f

    invoke-virtual {p0, v4}, Lcom/android/server/TryToSolveActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/TryToSolveActivity$5;-><init>(Lcom/android/server/TryToSolveActivity;Ljava/lang/String;)V

    .line 202
    .local v3, "itemUninstallUpdate":Lcom/android/server/TryToSolveActivity$ListItem;
    iget-object v4, p0, Lcom/android/server/TryToSolveActivity;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v3    # "itemUninstallUpdate":Lcom/android/server/TryToSolveActivity$ListItem;
    :cond_1
    new-instance v0, Lcom/android/server/TryToSolveActivity$6;

    const v4, 0x9090040

    invoke-virtual {p0, v4}, Lcom/android/server/TryToSolveActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/android/server/TryToSolveActivity$6;-><init>(Lcom/android/server/TryToSolveActivity;Ljava/lang/String;)V

    .line 217
    .local v0, "itemClearData":Lcom/android/server/TryToSolveActivity$ListItem;
    iget-object v4, p0, Lcom/android/server/TryToSolveActivity;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v1, Lcom/android/server/TryToSolveActivity$7;

    const v4, 0x9090042

    invoke-virtual {p0, v4}, Lcom/android/server/TryToSolveActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/android/server/TryToSolveActivity$7;-><init>(Lcom/android/server/TryToSolveActivity;Ljava/lang/String;)V

    .line 232
    .local v1, "itemExit":Lcom/android/server/TryToSolveActivity$ListItem;
    iget-object v4, p0, Lcom/android/server/TryToSolveActivity;->mListItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method private setupListView()V
    .locals 4

    .prologue
    .line 147
    const v0, 0x90b0043

    invoke-virtual {p0, v0}, Lcom/android/server/TryToSolveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/server/TryToSolveActivity;->mListView:Landroid/widget/ListView;

    .line 148
    iget-object v0, p0, Lcom/android/server/TryToSolveActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    invoke-direct {p0}, Lcom/android/server/TryToSolveActivity;->getListItemContentStrings()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 150
    iget-object v0, p0, Lcom/android/server/TryToSolveActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/server/TryToSolveActivity$3;

    invoke-direct {v1, p0}, Lcom/android/server/TryToSolveActivity$3;-><init>(Lcom/android/server/TryToSolveActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 163
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v0, 0x904002c

    invoke-virtual {p0, v0}, Lcom/android/server/TryToSolveActivity;->setContentView(I)V

    .line 110
    const v0, 0x909003d

    invoke-virtual {p0, v0}, Lcom/android/server/TryToSolveActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/TryToSolveActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    const-string v0, "com.lenovo.updateassist.action.Feedback"

    invoke-direct {p0, p0, v0}, Lcom/android/server/TryToSolveActivity;->isActivityActionRegistered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/TryToSolveActivity;->isFeedbackActionRegistered:Z

    .line 113
    invoke-direct {p0}, Lcom/android/server/TryToSolveActivity;->setupListItems()V

    .line 114
    invoke-direct {p0}, Lcom/android/server/TryToSolveActivity;->setupListView()V

    .line 115
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 138
    iget-object v0, p0, Lcom/android/server/TryToSolveActivity;->mFeedbackServiceStateObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/android/server/TryToSolveActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TryToSolveActivity;->mFeedbackServiceStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 141
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 120
    iget-object v1, p0, Lcom/android/server/TryToSolveActivity;->mFeedbackServiceStateObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/server/TryToSolveActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fb_switch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/TryToSolveActivity;->mFeedbackServiceStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 128
    :cond_0
    const-string v1, "com.lenovo.updateassist.action.Feedback"

    invoke-direct {p0, p0, v1}, Lcom/android/server/TryToSolveActivity;->isActivityActionRegistered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 129
    .local v0, "currentActionRegisterState":Z
    iget-boolean v1, p0, Lcom/android/server/TryToSolveActivity;->isFeedbackActionRegistered:Z

    if-eq v1, v0, :cond_1

    .line 130
    iput-boolean v0, p0, Lcom/android/server/TryToSolveActivity;->isFeedbackActionRegistered:Z

    .line 131
    iget-object v1, p0, Lcom/android/server/TryToSolveActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 133
    :cond_1
    return-void
.end method
