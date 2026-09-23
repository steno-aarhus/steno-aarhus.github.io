# Landing page for SDCA GitHub projects

This repository contains the landing page for SDCA GitHub projects with an
overview page of the projects.

## How do add your project to the overview page

To add your project to the listing on the landing page, the project must:

1) Be a repository in the steno-aarhus organisation.
2) Contain one of the following topic pairs (which can be seen in
   [_build.sh](_build.sh)) to your repository's "About" section:
   - For project websites: project, website
   - For documentation/resource/support websites: resource, website
   - For software projects: software, website
   - For event websites: event, website
   - For group websites: group, website
   - For individual research projects: research-project

> [!NOTE]
>
> If you would like an external repository or website to be linked on the page,
> please add it to the [index.qmd](index.qmd) and make a pull request.

The website is regenerated every night, so check that your repository has been added the day after you've added the topics.
