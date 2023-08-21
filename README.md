<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-40README-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

# ultralisp-client - A client for working with Ultralisp.org

<a id="ultralisp-client-asdf-system-details"></a>

## ULTRALISP-CLIENT ASDF System Details

* Description: A client for working with Ultralisp.org

* Licence: Unlicense

* Author: Alexander Artemenko <svetlyak.40wt@gmail.com>

* Homepage: [https://ultralisp.github.io/ultralisp-client/][3b3d]

* Bug tracker: [https://github.com/ultralisp/ultralisp-client/issues][4af5]

* Source control: [GIT][0dbb]

* Depends on: [jsonrpc][a9bd], [openrpc-client][b8fd]

[![](https://github-actions.40ants.com/ultralisp/ultralisp-client/matrix.svg?only=ci.run-tests)][73c0]

![](http://quickdocs.org/badge/ultralisp-client.svg)

<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-3A-40INSTALLATION-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

## Installation

You can install this library from Quicklisp, but you want to receive updates quickly, then install it from Ultralisp.org:

```
(ql-dist:install-dist "http://dist.ultralisp.org/"
                      :prompt nil)
(ql:quickload :ultralisp-client)
```
<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-3A-40USAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

## Usage

Here is example of usage:

```lisp
CL-USER> (ultralisp-client:get-all-tags)
 ...
 #<ULTRALISP-CLIENT/LOWLEVEL:TAG  NAME="ansi-terminal" PROJECT-COUNT=1>
 #<ULTRALISP-CLIENT/LOWLEVEL:TAG  NAME="ape" PROJECT-COUNT=1>
 #<ULTRALISP-CLIENT/LOWLEVEL:TAG  NAME="api" PROJECT-COUNT=12>
 ...
 #<ULTRALISP-CLIENT/LOWLEVEL:TAG  NAME="template-engine" PROJECT-COUNT=3> ...)

CL-USER> (ultralisp-client:get-projects-by-tag "template-engine")
(#<ULTRALISP-CLIENT/LOWLEVEL:PROJECT2  CREATED-AT="2019-03-19T05:10:39.000000Z"
                                       UPDATED-AT="2020-12-25T05:58:49.000000Z"
                                       ID=850 VERSION=0 LATEST=T DELETED=NIL
                                       NAME="mmontone/djula"
                                       DESCRIPTION="Common Lisp port of the Django templating language">
 #<ULTRALISP-CLIENT/LOWLEVEL:PROJECT2  CREATED-AT="2020-04-11T16:38:27.000000Z"
                                       UPDATED-AT="2020-04-11T16:51:01.000000Z"
                                       ID=1432 VERSION=0 LATEST=T DELETED=NIL
                                       NAME="RailsOnLisp/rol-template"
                                       DESCRIPTION="RailsOnLisp template engine">
 #<ULTRALISP-CLIENT/LOWLEVEL:PROJECT2  CREATED-AT="2020-04-13T14:54:22.000000Z"
                                       UPDATED-AT="2020-10-02T16:26:19.000000Z"
                                       ID=1470 VERSION=0 LATEST=T DELETED=NIL
                                       NAME="mmontone/ten"
                                       DESCRIPTION="Yet another template system for Common Lisp">)

CL-USER> (first *)
#<ULTRALISP-CLIENT/LOWLEVEL:PROJECT2  CREATED-AT="2019-03-19T05:10:39.000000Z" UPDATED-AT="2020-12-25T05:58:49.000000Z" ID=850 VERSION=0 LATEST=T DELETED=NIL NAME="mmontone/djula" DESCRIPTION="Common Lisp port of the Django templating language">

CL-USER> (ultralisp-client:get-project-tags *)
("html-template" "template-engine")


CL-USER> (ultralisp-client:get-project-systems **)
(#<ULTRALISP-CLIENT/LOWLEVEL:SYSTEM-INFO  PROJECT-NAME="mmontone-djula"
                                          FILENAME="djula-translate.asd"
                                          NAME="djula-translate"
                                          DEPENDENCIES=("djula" "translate")>
 #<ULTRALISP-CLIENT/LOWLEVEL:SYSTEM-INFO  PROJECT-NAME="mmontone-djula"
                                          FILENAME="djula-test.asd"
                                          NAME="djula-test"
                                          DEPENDENCIES=("djula" "fiveam")>
 #<ULTRALISP-CLIENT/LOWLEVEL:SYSTEM-INFO  PROJECT-NAME="mmontone-djula"
                                          FILENAME="djula-locale.asd"
                                          NAME="djula-locale"
                                          DEPENDENCIES=("djula" "cl-locale")>
 #<ULTRALISP-CLIENT/LOWLEVEL:SYSTEM-INFO  PROJECT-NAME="mmontone-djula"
                                          FILENAME="djula-gettext.asd"
                                          NAME="djula-gettext"
                                          DEPENDENCIES=("djula" "gettext")>
 #<ULTRALISP-CLIENT/LOWLEVEL:SYSTEM-INFO  PROJECT-NAME="mmontone-djula"
                                          FILENAME="djula-demo.asd"
                                          NAME="djula-demo"
                                          DEPENDENCIES=("djula" "hunchentoot" "trivial-open-browser")>
 #<ULTRALISP-CLIENT/LOWLEVEL:SYSTEM-INFO  PROJECT-NAME="mmontone-djula"
                                          FILENAME="djula.asd"
                                          NAME="djula"
                                          DEPENDENCIES=("access" "alexandria" "babel" "cl-ppcre" "split-sequence" "local-time" "closer-mop" "trivial-backtrace" "cl-slice" "cl-locale" "gettext" "parser-combinators" "iterate")>)
```
<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-3A-40API-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

## API

<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-3A-40ULTRALISP-CLIENT-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### ULTRALISP-CLIENT

<a id="x-28-23A-28-2816-29-20BASE-CHAR-20-2E-20-22ULTRALISP-CLIENT-22-29-20PACKAGE-29"></a>

#### [package](1de8) `ultralisp-client`

<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-3A-7C-40ULTRALISP-CLIENT-3FGenerics-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Generics

<a id="x-28ULTRALISP-CLIENT-3AGET-PROJECT-SOURCES-20GENERIC-FUNCTION-29"></a>

##### [generic-function](6689) `ultralisp-client:get-project-sources` project

Returns a list of project sources with their systems and release information.

<a id="x-28ULTRALISP-CLIENT-3AGET-PROJECT-SYSTEMS-20GENERIC-FUNCTION-29"></a>

##### [generic-function](197f) `ultralisp-client:get-project-systems` project

<a id="x-28ULTRALISP-CLIENT-3AGET-PROJECT-TAGS-20GENERIC-FUNCTION-29"></a>

##### [generic-function](e212) `ultralisp-client:get-project-tags` project

<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-3A-7C-40ULTRALISP-CLIENT-3FFunctions-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Functions

<a id="x-28ULTRALISP-CLIENT-3AGET-ALL-TAGS-20FUNCTION-29"></a>

##### [function](4111) `ultralisp-client:get-all-tags`

Returns a list of all known tags and numbers of projects associated with them.

<a id="x-28ULTRALISP-CLIENT-3AGET-PROJECT-BY-NAME-20FUNCTION-29"></a>

##### [function](df2e) `ultralisp-client:get-project-by-name` name

<a id="x-28ULTRALISP-CLIENT-3AGET-PROJECTS-BY-TAG-20FUNCTION-29"></a>

##### [function](8d24) `ultralisp-client:get-projects-by-tag` tag

Returns projects having a given tag.

<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-3A-40ULTRALISP-CLIENT-2FCLIENT-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### ULTRALISP-CLIENT/CLIENT

<a id="x-28-23A-28-2823-29-20BASE-CHAR-20-2E-20-22ULTRALISP-CLIENT-2FCLIENT-22-29-20PACKAGE-29"></a>

#### [package](eaa6) `ultralisp-client/client`

<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-3A-7C-40ULTRALISP-CLIENT-2FCLIENT-3FFunctions-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Functions

<a id="x-28ULTRALISP-CLIENT-2FCLIENT-3AENSURE-CONNECTED-20FUNCTION-29"></a>

##### [function](323b) `ultralisp-client/client:ensure-connected` &optional (url \*url\*)

Use this function to override `URL` if it is different from default https://ultralisp.org/api/.

<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-3A-40ULTRALISP-CLIENT-2FLOWLEVEL-3FPACKAGE-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

### ULTRALISP-CLIENT/LOWLEVEL

<a id="x-28-23A-28-2825-29-20BASE-CHAR-20-2E-20-22ULTRALISP-CLIENT-2FLOWLEVEL-22-29-20PACKAGE-29"></a>

#### [package](7270) `ultralisp-client/lowlevel`

<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-3A-7C-40ULTRALISP-CLIENT-2FLOWLEVEL-3FClasses-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Classes

<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-3A-40ULTRALISP-CLIENT-2FLOWLEVEL-24API-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### API

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3AAPI-20CLASS-29"></a>

###### [class](c081) `ultralisp-client/lowlevel:api` (client)

<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-3A-40ULTRALISP-CLIENT-2FLOWLEVEL-24PROJECT2-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### PROJECT2

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3APROJECT2-20CLASS-29"></a>

###### [class](c081) `ultralisp-client/lowlevel:project2` ()

**Readers**

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3APROJECT2-CREATED-AT-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3APROJECT2-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:project2-created-at` (project2) (:created-at = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3APROJECT2-DELETED-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3APROJECT2-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:project2-deleted` (project2) (:deleted = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3APROJECT2-DESCRIPTION-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3APROJECT2-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:project2-description` (project2) (:description = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3APROJECT2-ID-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3APROJECT2-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:project2-id` (project2) (:id = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3APROJECT2-LATEST-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3APROJECT2-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:project2-latest` (project2) (:latest = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3APROJECT2-NAME-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3APROJECT2-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:project2-name` (project2) (:name = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3APROJECT2-UPDATED-AT-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3APROJECT2-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:project2-updated-at` (project2) (:updated-at = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3APROJECT2-VERSION-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3APROJECT2-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:project2-version` (project2) (:version = nil)

<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-3A-40ULTRALISP-CLIENT-2FLOWLEVEL-24RELEASE-INFO-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### RELEASE-INFO

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ARELEASE-INFO-20CLASS-29"></a>

###### [class](c081) `ultralisp-client/lowlevel:release-info` ()

**Readers**

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ARELEASE-INFO-ARCHIVE-PATH-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ARELEASE-INFO-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:release-info-archive-path` (release-info) (:archive-path = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ARELEASE-INFO-CONTENT-SHA1-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ARELEASE-INFO-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:release-info-content-sha1` (release-info) (:content-sha1 = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ARELEASE-INFO-FILE-SIZE-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ARELEASE-INFO-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:release-info-file-size` (release-info) (:file-size = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ARELEASE-INFO-MD5SUM-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ARELEASE-INFO-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:release-info-md5sum` (release-info) (:md5sum = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ARELEASE-INFO-PROJECT-NAME-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ARELEASE-INFO-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:release-info-project-name` (release-info) (:project-name = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ARELEASE-INFO-PROJECT-PREFIX-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ARELEASE-INFO-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:release-info-project-prefix` (release-info) (:project-prefix = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ARELEASE-INFO-PROJECT-URL-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ARELEASE-INFO-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:release-info-project-url` (release-info) (:project-url = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ARELEASE-INFO-SYSTEM-FILES-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ARELEASE-INFO-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:release-info-system-files` (release-info) (:system-files = nil)

<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-3A-40ULTRALISP-CLIENT-2FLOWLEVEL-24SEARCH-RESULT-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### SEARCH-RESULT

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASEARCH-RESULT-20CLASS-29"></a>

###### [class](c081) `ultralisp-client/lowlevel:search-result` ()

**Readers**

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASEARCH-RESULT-DOCUMENTATION-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASEARCH-RESULT-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:search-result-documentation` (search-result) (:documentation = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASEARCH-RESULT-PACKAGE-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASEARCH-RESULT-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:search-result-package` (search-result) (:package = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASEARCH-RESULT-SYMBOL-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASEARCH-RESULT-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:search-result-symbol` (search-result) (:symbol = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASEARCH-RESULT-SYSTEM-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASEARCH-RESULT-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:search-result-system` (search-result) (:system = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASEARCH-RESULT-TYPE-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASEARCH-RESULT-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:search-result-type` (search-result) (:type = nil)

<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-3A-40ULTRALISP-CLIENT-2FLOWLEVEL-24SOURCE-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### SOURCE

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-20CLASS-29"></a>

###### [class](c081) `ultralisp-client/lowlevel:source` ()

**Readers**

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-CREATED-AT-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:source-created-at` (source) (:created-at = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-DELETED-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:source-deleted` (source) (:deleted = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-ID-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:source-id` (source) (:id = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-LATEST-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:source-latest` (source) (:latest = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-PARAMS-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:source-params` (source) (:params = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-PROJECT-ID-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:source-project-id` (source) (:project-id = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-PROJECT-VERSION-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:source-project-version` (source) (:project-version = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-RELEASE-INFO-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:source-release-info` (source) (:release-info = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-SYSTEMS-INFO-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:source-systems-info` (source) (:systems-info = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-TYPE-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:source-type` (source) (:type = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-UPDATED-AT-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:source-updated-at` (source) (:updated-at = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-VERSION-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASOURCE-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:source-version` (source) (:version = nil)

<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-3A-40ULTRALISP-CLIENT-2FLOWLEVEL-24SYSTEM-INFO-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### SYSTEM-INFO

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-20CLASS-29"></a>

###### [class](c081) `ultralisp-client/lowlevel:system-info` ()

**Readers**

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-AUTHOR-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:system-info-author` (system-info) (:author = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-DEPENDENCIES-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:system-info-dependencies` (system-info) (:dependencies = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-DESCRIPTION-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:system-info-description` (system-info) (:description = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-FILENAME-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:system-info-filename` (system-info) (:filename = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-LICENSE-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:system-info-license` (system-info) (:license = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-LONG-DESCRIPTION-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:system-info-long-description` (system-info) (:long-description = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-MAINTAINER-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:system-info-maintainer` (system-info) (:maintainer = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-NAME-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:system-info-name` (system-info) (:name = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-PATH-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:system-info-path` (system-info) (:path = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-PROJECT-NAME-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ASYSTEM-INFO-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:system-info-project-name` (system-info) (:project-name = nil)

<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-3A-40ULTRALISP-CLIENT-2FLOWLEVEL-24TAG-3FCLASS-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

##### TAG

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ATAG-20CLASS-29"></a>

###### [class](c081) `ultralisp-client/lowlevel:tag` ()

**Readers**

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ATAG-NAME-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ATAG-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:tag-name` (tag) (:name = nil)

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ATAG-PROJECT-COUNT-20-2840ANTS-DOC-2FLOCATIVES-3AREADER-20ULTRALISP-CLIENT-2FLOWLEVEL-3ATAG-29-29"></a>

###### [reader](c081) `ultralisp-client/lowlevel:tag-project-count` (tag) (:project-count = nil)

<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-3A-7C-40ULTRALISP-CLIENT-2FLOWLEVEL-3FGenerics-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Generics

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3AGET-ALL-TAGS-20GENERIC-FUNCTION-29"></a>

##### [generic-function](c081) `ultralisp-client/lowlevel:get-all-tags` client

Returns known tags and a number of projects associated with each tag. Tags are sorted alphabetically.

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3AGET-PROJECT-BY-NAME-20GENERIC-FUNCTION-29"></a>

##### [generic-function](c081) `ultralisp-client/lowlevel:get-project-by-name` client name

Returns a project details by it's name. Name should be in it's full form like "40ants/doc".

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3AGET-PROJECT-SOURCES-20GENERIC-FUNCTION-29"></a>

##### [generic-function](c081) `ultralisp-client/lowlevel:get-project-sources` client project-id

Retrieve all sources known for given project.

`URL` of the project can be retrieved from it's source params.

```text
             If source type is GITHUB, then it's params contain "user-or-org" and "project" keys.
             URL can be contructed from these values.

             For source type GIT, params hashmap will contain "url" key.

             Systems in systems-info key of a source, are sorted by name.
```
<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3AGET-PROJECT-SYSTEMS-20GENERIC-FUNCTION-29"></a>

##### [generic-function](c081) `ultralisp-client/lowlevel:get-project-systems` client project-id

Retrieve all systems of a given project.

Systems are sorted alphabetically.

```text
             In case if project defines two or more sources, systems can be duplicated in the list.
             Use get-project-sources in this case, to get separated list of systems for each source.
```
<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3AGET-PROJECT-TAGS-20GENERIC-FUNCTION-29"></a>

##### [generic-function](c081) `ultralisp-client/lowlevel:get-project-tags` client project-id

Retrieve all tags of a single project.

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3AGET-PROJECTS-BY-TAG-20GENERIC-FUNCTION-29"></a>

##### [generic-function](c081) `ultralisp-client/lowlevel:get-projects-by-tag` client tag &key limit page-key

Returns project market by a given tag.

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ARPC-DISCOVER-20GENERIC-FUNCTION-29"></a>

##### [generic-function](c081) `ultralisp-client/lowlevel:rpc-discover` client

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3ASEARCH-SYMBOLS-20GENERIC-FUNCTION-29"></a>

##### [generic-function](c081) `ultralisp-client/lowlevel:search-symbols` client term &key limit page-key

Search a symbol by it's name or docstring.

<a id="x-28ULTRALISP-CLIENT-DOCS-2FINDEX-3A-3A-7C-40ULTRALISP-CLIENT-2FLOWLEVEL-3FFunctions-SECTION-7C-2040ANTS-DOC-2FLOCATIVES-3ASECTION-29"></a>

#### Functions

<a id="x-28ULTRALISP-CLIENT-2FLOWLEVEL-3AMAKE-API-20FUNCTION-29"></a>

##### [function](c081) `ultralisp-client/lowlevel:make-api`


[0dbb]: https://github.com/ultralisp/ultralisp-client
[73c0]: https://github.com/ultralisp/ultralisp-client/actions
[eaa6]: https://github.com/ultralisp/ultralisp-client/blob/3fcec32ff947486f9a067710ea7c7f7e05153dcb/src/client.lisp#L1
[323b]: https://github.com/ultralisp/ultralisp-client/blob/3fcec32ff947486f9a067710ea7c7f7e05153dcb/src/client.lisp#L17
[1de8]: https://github.com/ultralisp/ultralisp-client/blob/3fcec32ff947486f9a067710ea7c7f7e05153dcb/src/core.lisp#L1
[7270]: https://github.com/ultralisp/ultralisp-client/blob/3fcec32ff947486f9a067710ea7c7f7e05153dcb/src/lowlevel.lisp#L1
[c081]: https://github.com/ultralisp/ultralisp-client/blob/3fcec32ff947486f9a067710ea7c7f7e05153dcb/src/lowlevel.lisp#L8
[df2e]: https://github.com/ultralisp/ultralisp-client/blob/3fcec32ff947486f9a067710ea7c7f7e05153dcb/src/projects.lisp#L15
[8d24]: https://github.com/ultralisp/ultralisp-client/blob/3fcec32ff947486f9a067710ea7c7f7e05153dcb/src/projects.lisp#L20
[e212]: https://github.com/ultralisp/ultralisp-client/blob/3fcec32ff947486f9a067710ea7c7f7e05153dcb/src/projects.lisp#L36
[197f]: https://github.com/ultralisp/ultralisp-client/blob/3fcec32ff947486f9a067710ea7c7f7e05153dcb/src/projects.lisp#L45
[6689]: https://github.com/ultralisp/ultralisp-client/blob/3fcec32ff947486f9a067710ea7c7f7e05153dcb/src/projects.lisp#L53
[4111]: https://github.com/ultralisp/ultralisp-client/blob/3fcec32ff947486f9a067710ea7c7f7e05153dcb/src/tags.lisp#L11
[4af5]: https://github.com/ultralisp/ultralisp-client/issues
[a9bd]: https://quickdocs.org/jsonrpc
[b8fd]: https://quickdocs.org/openrpc-client
[3b3d]: https://ultralisp.github.io/ultralisp-client/

* * *
###### [generated by [40ANTS-DOC](https://40ants.com/doc/)]
