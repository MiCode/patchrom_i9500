.class public Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;
.super Landroid/app/Activity;
.source "WifiHiddenApDeleteActivity.java"


# static fields
.field private static final MENU_ID_CANCEL:I = 0x2

.field private static final MENU_ID_DELETE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiHiddenApDeleteActivity"


# instance fields
.field private disableOpacity:F

.field private enableOpacity:F

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTablet:Z

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mRemoveButton:Landroid/view/View;

.field private mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveTextView:Landroid/widget/TextView;

.field private mSelectAllCheckbox:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mRemoveList:Ljava/util/ArrayList;

    .line 51
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mListView:Landroid/widget/ListView;

    .line 57
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->enableOpacity:F

    .line 58
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->disableOpacity:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->removeListItems()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mSelectAllCheckbox:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->enableOpacity:F

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mRemoveTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mRemoveButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->disableOpacity:F

    return v0
.end method

.method private addListItems()V
    .locals 6

    .prologue
    .line 198
    const-string v4, "/data/misc/wifi/hiddenAPs.txt"

    .line 200
    .local v4, path:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    .line 201
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 222
    :goto_0
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    .line 208
    .local v0, accessPoint:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .local v3, in:Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 216
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 218
    .end local v3           #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 219
    .local v1, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 216
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private removeListItems()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 226
    const/4 v3, 0x0

    .line 228
    .local v3, index:I
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v6

    if-nez v6, :cond_0

    .line 264
    :goto_0
    return-void

    .line 232
    :cond_0
    const v6, 0x7f090f84

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, message:Ljava/lang/String;
    invoke-static {p0, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 235
    const/4 v3, 0x0

    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 236
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 237
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mRemoveList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 241
    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 242
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mList:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 245
    :cond_3
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 248
    :try_start_0
    const-string v5, "/data/misc/wifi/hiddenAPs.txt"

    .line 250
    .local v5, path:Ljava/lang/String;
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .local v1, fw:Ljava/io/FileWriter;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    :try_start_1
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 255
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 256
    const-string v6, "\r\n"

    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 259
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 261
    .end local v1           #fw:Ljava/io/FileWriter;
    .end local v2           #i:I
    .end local v5           #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 259
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #fw:Ljava/io/FileWriter;
    .restart local v2       #i:I
    .restart local v5       #path:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, -0x2

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v5, 0x7f040175

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 66
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mIsTablet:Z

    .line 68
    iget-boolean v5, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mIsTablet:Z

    if-nez v5, :cond_0

    .line 71
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 72
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04015f

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, actionView:Landroid/view/View;
    const v5, 0x7f0b0419

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mRemoveButton:Landroid/view/View;

    .line 75
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mRemoveButton:Landroid/view/View;

    const v6, 0x7f0b041a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mRemoveTextView:Landroid/widget/TextView;

    .line 76
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mRemoveTextView:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->disableOpacity:F

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 77
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mRemoveButton:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 78
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mRemoveButton:Landroid/view/View;

    new-instance v6, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$1;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$1;-><init>(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v5, 0x7f0b0417

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 88
    .local v2, cancelButton:Landroid/view/View;
    new-instance v5, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$2;-><init>(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 96
    .local v0, actionBar:Landroid/app/ActionBar;
    const/16 v5, 0x16

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 98
    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 104
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #actionView:Landroid/view/View;
    .end local v2           #cancelButton:Landroid/view/View;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const v5, 0x7f0b0481

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 105
    .local v4, selectAllLayout:Landroid/widget/LinearLayout;
    const v5, 0x7f0b0482

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mSelectAllCheckbox:Landroid/view/View;

    .line 106
    new-instance v5, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$3;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$3;-><init>(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v5, 0x7f0b0363

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mListView:Landroid/widget/ListView;

    .line 128
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 130
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->addListItems()V

    .line 131
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x1090010

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mList:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v5, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 132
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mListView:Landroid/widget/ListView;

    new-instance v6, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$4;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity$4;-><init>(Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 157
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return v2

    .line 161
    :cond_0
    const v0, 0x7f0908b7

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200cf

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 165
    const/4 v0, 0x2

    const v1, 0x7f090143

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ce

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 177
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiHiddenApDeleteActivity;->removeListItems()V

    .line 178
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiSettings;->updateHiddenAccessPoint()V

    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 183
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 187
    :sswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 175
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method
